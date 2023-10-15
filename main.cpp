#include <cstdint>
#include <algorithm>
#include <iostream>
#include <memory>
#include <string>
#include <vector>
#include <chrono>
#include <ctime>
#include <cmath>
#include <omp.h>
#include <fstream>

/*
to generate asm:

  clang -masm=intel -S -Wall -O3 -o - main.cpp -I/opt/homebrew/opt/libomp/include  -Ofast --std=c++11  >main.asm

*/

/*  vars */

/*

Questions:
- why is lut uint32_t?



*/
uint16_t *org = nullptr, *temp = nullptr;
uint32_t *lut = nullptr, *lidx = nullptr;
uint32_t *lutMerged = nullptr;
uint8_t *outOrg = nullptr, *outWork = nullptr;

std::chrono::time_point<std::chrono::system_clock> StartTime;

const int width = 1024;
const int height = 1024;
const int N = 2048;
const int lutWidth = 128;
const int lutHeight = 128;
int maxLutValue = 128;
int experiment = 0;
bool isFirst = true;
double orgProcessTime = 0;

std::ofstream outFile;

void (*process)(const uint16_t *image, int width, int height, uint32_t *lut,
                int lut_size, uint8_t *output);




void ProcessOrgCount(const uint16_t *image, int width, int height, uint32_t *lut,
                int lut_size, uint8_t *output)
{
    int cnt = 0;
    for (int x = 0; x < width; x++)
    {
        for (int y = 0; y < height; y++)
        {
            // Find the index into the lut
            int lut_x = x % lut_size;
            int lut_y = y % lut_size;
            int lut_index = lut_y * lut_size + lut_x;
            output[y * width + x] = 0;
            // If blue component is larger than value in lut, set output to 0x20
            if ((image[y * width + x] & 0x1f) > lut[lut_index])
            {
                output[y * width + x] = 0x20;
                cnt+=1;
            }
        }
    }
    if (isFirst)
       std::cout << "Original percentage of trues : "<< std::to_string((double)cnt/(width*height)*100)<<"%" <<std::endl;
    isFirst = false;
}


void ProcessOrg(const uint16_t *image, int width, int height, uint32_t *lut,
                int lut_size, uint8_t *output)
{
    for (int x = 0; x < width; x++)
    {
        for (int y = 0; y < height; y++)
        {
            // Find the index into the lut
            int lut_x = x % lut_size;
            int lut_y = y % lut_size;
            int lut_index = lut_y * lut_size + lut_x;
            output[y * width + x] = 0;
            // If blue component is larger than value in lut, set output to 0x20
            if ((image[y * width + x] & 0x1f) > lut[lut_index])
            {
                output[y * width + x] = 0x20;
            }
        }
    }
}
/*
    utils
*/

void Start()
{
    StartTime = std::chrono::system_clock::now();
}

void Stop(std::string txt, bool isFirst = false)
{
    std::chrono::time_point<std::chrono::system_clock> EndTime = std::chrono::system_clock::now();
    double elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(EndTime - StartTime).count();
    std::string end = " ";
    if (isFirst)
        orgProcessTime = elapsed;
    else
        end = " " + std::to_string((int)(elapsed / orgProcessTime * 100.0)) + "%";

    outFile << experiment++ << "\t" << txt << "\t" << std::to_string((int)(elapsed / orgProcessTime * 100.0)) << std::endl;

    std::cout << txt << " " /*<< (int)elapsed */ << end << std::endl;
}

void ProcessOpt1(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{

#pragma omp parallel for num_threads(2)
    for (int x = 0; x < width; x++)
    {
        for (int y = 0; y < height; y++)
        {
            // Find the index into the lut
            int lut_x = x % lut_size;
            int lut_y = y % lut_size;
            int lut_index = lut_y * lut_size + lut_x;
            // Default set output to zero
            output[y * width + x] = 0;
            // If blue component is larger than value in lut, set output to 0x20
            if ((image[y * width + x] & 0x1f) > lut[lut_index])
            {
                output[y * width + x] = 0x20;
            }
        }
    }
}

void ProcessOpt2(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{

    for (int x = 0; x < width; x++)
    {
        for (int y = 0; y < height; y++)
        {
            // Find the index into the lut
            int lut_x = x % lut_size;
            int lut_y = y % lut_size;
            int lut_index = lut_y * lut_size + lut_x;
            // Default set output to zero
            int idx = y * width + x;
            output[idx] = 0;
            // If blue component is larger than value in lut, set output to 0x20
            if ((image[idx] & 0x1f) > lut[lut_index])
            {
                output[idx] = 0x20;
            }
        }
    }
}

void ProcessOpt3(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{

    for (int x = 0; x < width; x++)
    {
        for (int y = 0; y < height; y++)
        {
            // Find the index into the lut
            int lut_x = x % lut_size;
            int lut_y = y % lut_size;
            int lut_index = lut_y * lut_size + lut_x;
            // Default set output to zero
            int idx = y * width + x;
            // If blue component is larger than value in lut, set output to 0x20
            if ((image[idx] & 0x1f) > lut[lut_index])
            {
                output[idx] = 0x20;
            }
            else
                output[idx] = 0;
        }
    }
}

void ProcessOpt4(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);

    for (int x = 0; x < width; x++)
    {
        for (int y = 0; y < height; y++)
        {
            // Find the index into the lut
            int lut_x = x % lut_size;
            int lut_y = y % lut_size;
            int lut_index = lut_y * lut_size + lut_x;
            // Default set output to zero
            // If blue component is larger than value in lut, set output to 0x20

            if ((image[y * width + x] & 0x1f) > lut[lut_index])
                output[y * width + x] = 0x20;
        }
    }
}

void ProcessOpt5(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);

    for (int x = 0; x < width; x++)
    {
        for (int y = 0; y < height; y++)
        {
            // Find the index into the lut
            int lut_index = (y & lut_size - 1) * lut_size + (x & (lut_size - 1));
            // Default set output to zero
            int idx = y * width + x;
            // If blue component is larger than value in lut, set output to 0x20

            if ((image[idx] & 0x1f) > lut[lut_index])
                output[idx] = 0x20;
        }
    }
}

void ProcessOpt6(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);

    int idx = 0;
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            // Find the index into the lut
            int lut_index = (y & lut_size - 1) * lut_size + (x & (lut_size - 1));
            // Default set output to zero
            if ((image[idx] & 0x1f) > lut[lut_index])
                output[idx] = 0x20;
            idx++;
        }
    }
}

void ProcessOpt7(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);

    int idx = 0;
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            // Find the index into the lut
            //            int lut_index = (y&lut_size-1) * lut_size + (x&(lut_size-1));
            // Default set output to zero
            if ((image[idx] & 0x1f) > lut[lidx[idx]])
                output[idx] = 0x20;
            idx++;
        }
    }
}

void ProcessOpt8(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);

    int idx = 0;
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            if ((image[idx] & 0x1f) > lutMerged[idx])
                output[idx] = 0x20;
            idx++;
        }
    }
}

void ProcessOpt9(const uint16_t *image, int width, int height, uint32_t *lut,
                 int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);
    for (int idx = 0; idx < width * height; idx++)
    {
        if ((image[idx] & 0x1f) > lutMerged[idx])
            output[idx] = 0x20;
    }
}

void ProcessOpt10(const uint16_t *image, int width, int height, uint32_t *lut,
                  int lut_size, uint8_t *output)
{
    int tab2[] = {0, 0x20};
    for (int idx = 0; idx < width * height; idx++)
    {
        output[idx] = tab2[((image[idx] & 0x1f) > lutMerged[idx])];
    }
}

void ProcessOpt11(const uint16_t *image, int width, int height, uint32_t *lut,
                  int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);

#pragma unroll
    for (int idx = 0; idx < width * height; idx++)
    {
        if ((image[idx] & 0x1f) > lutMerged[idx])
            output[idx] = 0x20;
    }

//    asm(" ldurh	w16, [x12, #-6]");
/*
    asm("

        ldurh	w16, [x12, #-6]
        and	w16, w16, #0x1f
        add	x17, x15, x10, lsl #2
        ldr	w17, [x17, #4]
        cmp	w17, w16
        b.lo	LBB15_20
    LBB15_13:                               ;   in Loop: Header=BB15_11 Depth=1
        ldurh	w16, [x12, #-4]
        and	w16, w16, #0x1f
        add	x17, x15, x10, lsl #2
        ldr	w17, [x17, #8]
        cmp	w17, w16
        b.lo	LBB15_21
    ");*/
    
}

void ProcessOpt12(const uint16_t *image, int width, int height, uint32_t *lut,
                  int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);
#pragma omp parallel for num_threads(2)
    for (int idx = 0; idx < width * height; idx++)
    {
        if ((image[idx] & 0x1f) > lutMerged[idx])
            output[idx] = 0x20;
    }
}

void ProcessOpt13(const uint16_t *image, int width, int height, uint32_t *lut,
                  int lut_size, uint8_t *output)
{
    memset(output, 0, width * height);
#pragma omp parallel for num_threads(2)
    for (int i = 0; i < 2; i++)
    {
        if (i == 0)
        {
#pragma unroll
            for (int idx = 0; idx < width * height; idx += 2)
            {
                if ((image[idx] & 0x1f) > lutMerged[idx])
                    output[idx] = 0x20;
            }
        }
        if (i == 1)
        {
#pragma unroll
            for (int idx = 1; idx < width * height; idx += 2)
            {
                if ((image[idx] & 0x1f) > lutMerged[idx])
                    output[idx] = 0x20;
            }
        }
    }
}

void ProcessOpt14(const uint16_t *image, int width, int height, uint32_t *lut,
                  int lut_size, uint8_t *output)
{
    int tab2[] = {0, 0x20};
    #pragma omp parallel for num_threads(2)
    for (int idx = 0; idx < width * height; idx++)
    {
        output[idx] = tab2[((image[idx] & 0x1f) > lutMerged[idx])];
    }
}
void ProcessOpt15(const uint16_t *image, int width, int height, uint32_t *lut,
                  int lut_size, uint8_t *output)
{
    int tab2[] = {0, 0x20};
    #pragma unroll
    for (int idx = 0; idx < width * height; idx++)
    {
        output[idx] = tab2[((image[idx] & 0x1f) > lutMerged[idx])];
    }
}



// Some random values in the lookup table
void InitLut(uint32_t *pLut)
{
    for (int i = 0; i < lutWidth * lutHeight; i++)
    {
        pLut[i] = rand() % maxLutValue;
    }
}

void InitImage()
{
    for (int i = 0; i < width * height; i++)
    {
        org[i] = rand();
        outWork[i] = 0;
        outOrg[i] = 0;
    }
}

void InitLidx()
{
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            lidx[y * width + x] = (y & lutWidth - 1) * lutWidth + (x & (lutWidth - 1));
            lutMerged[y * width + x] = lut[lidx[y * width + x]];
        }
    }
}

void Init()
{
    org = new uint16_t[width * height];
    lidx = new uint32_t[width * height];
    lutMerged = new uint32_t[width * height];
    temp = new uint16_t[width * height];
    lut = new uint32_t[lutWidth * lutHeight];
    outOrg = new uint8_t[width * height];
    outWork = new uint8_t[width * height];
    InitLut(lut);
    InitImage();
    InitLidx();

    outFile = std::ofstream("data.txt");
    
}

void Verify()
{
    for (int i = 0; i < width * height; i++)
    {
        //        std::cout << i << " " <<(int)outWork[i] << " "<< (int)outOrg[i] << std::endl;
        if ((outWork[i]) != (outOrg[i]))
        {
            std::cout << "OH NOES output is not correct! " << i << std::endl;
            exit(1);
        }
    }
}

void Execute(void (*process)(const uint16_t *image, int width, int height, uint32_t *lut,
                             int lut_size, uint8_t *output),
             std::string txt, bool isFirst = false)
{
    auto out = isFirst ? outOrg : outWork;
    Start();

    for (int i = 0; i < N; i++)
        process(org, width, height, lut, lutWidth, out);

    Stop(txt, isFirst);

    if (!isFirst)
        Verify();
}

void Cleanup()
{
    outFile.close();
    delete[] org;
    delete[] outOrg;
    delete[] outWork;
    delete[] lut;
    delete[] temp;
    delete[] lidx;
}

int main(int argc, char* argv[])
{
    maxLutValue = atoi(argv[1]);
    Init();
    Execute(&ProcessOrgCount, "Counting", true);
    Execute(&ProcessOrg, "Original", true);
    Execute(&ProcessOrg, "Original", true);
    Execute(&ProcessOpt1, "OpenMP opt");
    Execute(&ProcessOpt2, "Indices");
    Execute(&ProcessOpt3, "Remove output");
    Execute(&ProcessOpt4, "Memset");
    Execute(&ProcessOpt5, "No mod%");
    Execute(&ProcessOpt6, "Index");
    Execute(&ProcessOpt7, "Lidx");
    Execute(&ProcessOpt8, "LutMerged");
    Execute(&ProcessOpt9, "No double loop");
    memset(outWork, 0, width * height);
    Execute(&ProcessOpt10, "Try > and tab?");
    Execute(&ProcessOpt11, "Unroll that thing");
    Execute(&ProcessOpt12, "openMP 2 cores");
    Execute(&ProcessOpt13, "OMP + unrolled");
    memset(outWork, 0, width * height);
    Execute(&ProcessOpt14, "tab omp");
    Execute(&ProcessOpt15, "tab unrolled");

    Cleanup();

    return 0;
}