import qbs 1.0
CloudControllerApplication
{
   name : "cloudcontroller"
   cpp.includePaths: base.concat([".", "../../libs"])
   cpp.defines: base.concat([
                               'CLOUD_CONTROLLER_VERSION="' + project.ccVersion + '"'
                            ])
   
   files:[
      "application.cpp",
      "application.h",
      "command_runner.cpp",
      "command_runner.h",
      "const.h",
      "main.cpp",
   ]
   
   Group {
      name: "command"
      prefix: name+"/"
      files: [
         "command_repo.h",
         "global_shell_command.cpp",
         "global_shell_command.h",
         "global_version_command.cpp",
         "global_version_command.h",
      ]
   }
   
   Group {
      name: "shell"
      prefix: name+"/"
      files:[
         "task_loop.cpp",
         "task_loop.h"
      ]
   }
   
   Group {
      name: "task"
      prefix: name+"/"
      files:[
           "common/uploader.cpp",
           "common/uploader.h",
           "global/enter_upgrademgr_task.cpp",
           "global/enter_upgrademgr_task.h",
           "upgrademgr/abstract_task.cpp",
           "upgrademgr/abstract_task.h",
           "upgrademgr/serverstatus/server_status.cpp",
           "upgrademgr/softwarerepo/list_repo.cpp",
           "upgrademgr/softwarerepo/list_repo.h",
           "upgrademgr/softwarerepo/upload_software.cpp",
           "upgrademgr/softwarerepo/upload_software.h",
           "upgrademgr/upgrademgr_task_repo.h",
           "upgrademgr/upgrader/upgrade_upgrademgr.cpp",
           "upgrademgr/upgrader/upgrade_upgrademgr.h",
           "upgrademgr/serverstatus/server_status.h",
       ]
   }
   
   Group {
      name: "container"
      prefix: name+"/"
      files:[
         "global.cpp",
         "global.h",
         "upgrademgr.cpp",
         "upgrademgr.h",
      ]
   }
   
   Group {
      name: "utils"
      prefix: name+"/"
      files:[
         "default_cfg_initializer.cpp",
      ]
   }
   
   Group {
      name: "initializer"
      prefix: name+"/"
      files:[
         "global_initializer_and_cleanup.cpp",
         "init_metatype.cpp",
         "initializer_cleanup_funcs.h",
      ]
   }
}