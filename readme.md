Put .sh file in your scripts/bin directory

Put .sub file in your scripts/etc directory

- Alter the .sh file to point to your relevant notebook directory, and enable a conda environment that can run jupyter lab (in our case we use config_ic.sh to do so).
- Alter the resources as needed within the .sub
- Create the appropriate output files described in the .sub file if you wish to see any output.
- Port (<port>) by default is set to 4202, change this in the .sh file as needed

Do all these steps within the same terminal:
1. Forward an ssh connection from your local node to the head node:
`ssh -gL <port>:localhost:<port> <username>@noether.hep.manchester.ac.uk`
2. Submit your jupyter notebook job as a normal batch job after you are happy with its settings.
`condor_submit /scripts/etc/jupyter.sub`
3. Once the job has started, find the job ID (<job_id>) name with `condor_q`
4. Create a forwarding connection from the job node to the head node:
`condor_ssh_to_job -ssh "ssh -gL <port>:localhost:<port>" <job id>`

