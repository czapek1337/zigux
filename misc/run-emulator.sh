#!/usr/bin/env sh

qemu_args="-cdrom $1 -debugcon stdio -smp 1 -m 1G -M q35,accel=kvm:whpx:tcg -cpu qemu64,+fsgsbase -no-reboot -no-shutdown -s"

qemu-system-x86_64 ${qemu_args} ${@:2}
