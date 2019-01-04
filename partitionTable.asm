nop

; Disk description table, to make it a valid usb

OEMLabel		db "linxnerd"
BytesPerSector		dw 512
SectorsPerCluster	db 1
ReservedForBoot		dw 1
NumberOfFats		db 2
RootDirEntries		dw 224
LogicalSectors		dw 2880
MediumByte		db 0F0h
SectorsPerFat		dw 9
SectorsPerTrack		dw 18
Sides			dw 2
HiddenSectors		dd 0
LargeSectors		dd 0
DriveNo			dw 0
Signature		db 41
VolumeID		dd 87654321h
VolumeLabel		db "JerryOS"
FileSystem		db "FAT12   "
