#include <stdint.h>
#include <stdio.h>
#include <inttypes.h>

extern uint64_t and_flag_test(uint64_t a, uint64_t b);

int main(int argc, char** argv) {
    printf("%016" PRIx64 "\n", and_flag_test(0, 0));
    return 0;
}
