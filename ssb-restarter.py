# A sript to restart ssb command and handle error output.

import subprocess

command = ["cmd", "/c", "ssb-server", "status"]
# command = ["cmd", "/c", "dir"]
# runparam = (
      # ["ssb-server", "status"],
      # shell=True
    # ).splitlines()

err_reppeat = 9

errors = {
    "errcon":"Error: Could not connect to ssb-server"
    }


def Run(command):
    process = subprocess.run ( command, capture_output="true" )
    return process

def ReppeatError(command, reppeat):
    for i in range(reppeat):
        print ("Attempt " + str(i+2) + "...")
        process = Run(command)
        errcode = HandleError(process, no_reppeat="true")
        HandleOutput(process)
        if errcode == 0:
            print ("Error resolved, now exiting!")
            exit()
        
def HandleError(process, no_reppeat="false"):
    errcode = process.returncode
    if errcode > 0:
        print ("Encountered exit code " + str(errcode))
        errtext = process.stderr.decode("cp866")
        if errtext[:len(errors["errcon"])] == errors["errcon"]:
            print (errors["errcon"])
            if no_reppeat=="false":
                ReppeatError(command, err_reppeat)
        else: print (errtext)
    return errcode

def HandleOutput(process):
    if len (process.stdout) > 0:
        print ("stdout")
        print (process.stdout.decode("cp866"))
    else: print ("no stdout")

process = Run(command)
HandleError(process)
HandleOutput(process)

print ("completed script")
    
    



# result = []
# for line in process.stdout:
    # result.append(line)

# print (result)




# DIR should be done with os.dirlist or something. But the ide is the same

# result = subprocess.check_output (
      # ["ssb-server", "status"],
      # shell=True
    # ).splitlines()

# for line in result:
    # print (line.decode("cp866"))
