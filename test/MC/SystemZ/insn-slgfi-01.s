# RUN: llvm-mc -triple s390x-linux-gnu -show-encoding %s | FileCheck %s

#CHECK: slgfi	%r0, 0                  # encoding: [0xc2,0x04,0x00,0x00,0x00,0x00]
#CHECK: slgfi	%r0, 4294967295         # encoding: [0xc2,0x04,0xff,0xff,0xff,0xff]
#CHECK: slgfi	%r15, 0                 # encoding: [0xc2,0xf4,0x00,0x00,0x00,0x00]

	slgfi	%r0, 0
	slgfi	%r0, (1 << 32) - 1
	slgfi	%r15, 0
