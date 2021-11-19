#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void FUN_00101235(char *);
int main(){
    char * password = "Cu$t0mB00Tl04d3r";

    FUN_00101235(password);
}


void FUN_00101235(char *param_1)

{
  int iVar1;
  size_t sVar2;
  char local_108 [111];
  char local_99;
  char local_98 [16];
  long local_88;
  long local_80;
  long local_78;
  long local_70;
//   undefined4 local_68;
  FILE *local_58;
  FILE *local_50;
  char *local_48;
  int local_3c;
  char *local_38;
//   undefined4 local_30;
  unsigned int local_2c;
  unsigned long local_28;
  char *local_20;
  int local_14;
  int local_10;
  unsigned int local_c;
  
  local_78 = 0x6e69622e736665;
  local_70 = 0;
//   local_68 = 0;
  local_88 = 0x12f6a8129a3a98f4;
  local_80 = 0x9614ba1a12aada12;
//   local_30 = 0x10;
  local_38 = (char *)malloc(0x10);
  for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
    local_38[(int)local_c] = *(char *)((long)&local_88 + (long)(int)local_c) >> 1 ^ 0x39;
  }
  iVar1 = strcmp(param_1,local_38);
  if (1==1) {
    puts("\nLoading File System.");
    sVar2 = strlen(param_1);
    local_3c = (int)sVar2;
    local_14 = 0;
    for (local_10 = 0; local_10 < local_3c; local_10 = local_10 + 1) {
      sprintf(local_108 + local_14,"%02x",(unsigned long)((int)param_1[local_10] & 0xff));
      local_14 = local_14 + 2;
    }
    local_20 = local_108;
    for (local_28 = 0; local_28 < 0x10; local_28 = local_28 + 1) {
      __isoc99_sscanf(local_20,"%2hhx",local_98 + local_28);
      local_20 = local_20 + 2;
    }
    local_48 = "efs.bin";
    local_50 = fopen("./efs.bin","rb");
    local_58 = fopen("temp_03455.bin","wb");
    if (local_50 == (FILE *)0x0) {
      puts("Error in reading filesystem");
    }
    else {
      while( 1==1 ) {
        iVar1 = feof(local_50);
        if (iVar1 != 0) break;
        fread(&local_99,1,1,local_50);
        for (local_2c = 0; local_2c < 0x10; local_2c = local_2c + 1) {
          local_99 = local_99 ^ local_98[(int)local_2c];
        }
        fwrite(&local_99,1,1,local_58);
      }
      puts("Error in loading filesystem");
    }
  }
  return;
}
