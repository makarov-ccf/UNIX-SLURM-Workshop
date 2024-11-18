The presentation titled **"Introduction to UNIX/HPCv3/SLURM"** provides an overview of UNIX systems, high-performance computing (HPC) resources, and the SLURM workload manager, tailored for the Cleveland Clinic's Lerner Research Institute (LRI). Below is a summary of key points:

### 1. **Purpose and Context**
   - The workshop is part of the Fall 2024 CITI series aimed at beginner-to-intermediate users, focusing on UNIX systems and HPC environments.
   - It is specifically designed for LRI’s HPC resources.

### 2. **UNIX Fundamentals**
   - **History**: UNIX originated in the late 1960s and remains a leading multitasking and multiuser OS.
   - **Key Commands**: Includes `cd`, `pwd`, `ls`, `chmod`, `rsync`, and many others for navigating, managing files, and transferring data.
   - **File Permissions**: Explained the levels of user access (read, write, execute) and how to modify permissions using `chmod` and `umask`.

### 3. **HPCv3 Resources**
   - The LRI HPC cluster offers various nodes for different computational needs (e.g., defq, bigmem, xtreme, and GPU).
   - File storage includes BeeGFS (temporary) and Isilon (long-term).
   - Users must adhere to best practices for resource allocation, storage, and file transfers.

### 4. **SLURM Workload Manager**
   - SLURM is used for job scheduling and resource allocation in HPC clusters.
   - Key commands:
     - `sbatch`: Submit batch jobs.
     - `squeue`: View the job queue.
     - `scancel`: Cancel jobs.
   - Explained options for configuring jobs, monitoring system resources, and utilizing partitions effectively.

### 5. **Additional Tools and Development**
   - **Posit Servers**: Previously RStudio, these systems support resource-intensive work outside HPC.
   - **System Monitoring**: Tools like `top` and `htop` for real-time resource monitoring.
   - **Remote File Editing**: Editors like Vim, Emacs, and Nano, with integrated development environments (IDE) available for enhanced workflows.

### 6. **Practical Guidance**
   - Steps to access and utilize HPC resources.
   - Practice job submission scripts provided for hands-on experience.

### 7. **Support and Resources**
   - Contact details for workshop facilitators and further reading materials on SLURM are provided.
   - Emphasized acknowledgment for LRI Computing Services in related publications.

This guide serves as a comprehensive introduction for new users to understand and efficiently utilize UNIX systems, HPC clusters, and SLURM at LRI. Let me know if you need a deeper dive into any section!

