#include<linux/unistd.h>
#include<linux/errno.h>
#include<linux/kernel.h>
#include<linux/sched.h>
#include<linux/syscalls.h>

long mycall(int n)
{
	printk("sys_mycall excuted!\n");
	return n<<1;
}

SYSCALL_DEFINE1(mycall, int, n)
{
	return mycall(n);
}
