#!/usr/bin/env python

import os
import os.path
import sys
import shutil
import time


def read_one_str_col(filename):
	
		fh = open(filename, "r")
		values = []
		for line in fh:
			values.append(line.strip())
		fh.close()
		return values

def usage():
    print "Usage:  %s" % os.path.basename(sys.argv[0] + ' base, task_id, listfile' )


def main():
	if len(sys.argv)>2:
		args = sys.argv[1:]
		if "-h" in args or "--help" in args:
			usage();
			sys.exit(2)

		else:
			base=sys.argv[1]
			task_id=int(sys.argv[2])
			#### Python index starts with 0
			idx=task_id-1
			listfile=sys.argv[3]
			### Set current working directory to base
			os.chdir(base)
			if os.path.exists(listfile) and os.path.isfile(listfile):
				lst=read_one_str_col(listfile)
				time.sleep(10)
				print ('Python task_id ' + str(task_id) + ' reads ' + str(lst[idx]) ) 
				time.sleep(10)
			else:
				print ("File ", listfile, " not found or zero size")
				

	else:
		usage()


if __name__ == "__main__":
	sys.exit(main())