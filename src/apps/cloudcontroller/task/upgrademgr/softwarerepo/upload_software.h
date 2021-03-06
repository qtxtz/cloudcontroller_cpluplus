#ifndef CLOUD_CONTROLLER_TASK_UPGRADEMGR_SOFTWARE_REPO_UPLOAD_SOFTWARE_H
#define CLOUD_CONTROLLER_TASK_UPGRADEMGR_SOFTWARE_REPO_UPLOAD_SOFTWARE_H

#include "cclib/shell/task_meta.h"
#include "corelib/network/rpc/invoke_meta.h"
#include "cclib/shell/abstract_net_task.h"

namespace cloudcontroller{
namespace task{
namespace upgrademgr{
namespace softwarerepo{

using cclib::shell::AbstractNetTask;
using cclib::shell::AbstractTaskContainer;
using cclib::shell::TaskMeta;

class UploadSoftware : public AbstractNetTask
{
public:
   UploadSoftware(AbstractTaskContainer *taskContainer, const TaskMeta &meta);
   virtual void run();
protected slots:
   void prepareUploadHandler();
   void startUploadHandler();
   void uploadProcessHandler(quint64 uploaded, quint64 total);
   void checkUploadSumHandler();
   void uploadSuccessHandler();
   void uploadErrorHandler(int errorCode, const QString &errorString);
protected:
   QString m_filename;
};

}//softwarerepo
}//upgrademgr
}//task
}//cloudcontroller

#endif // CLOUD_CONTROLLER_TASK_UPGRADEMGR_SOFTWARE_REPO_UPLOAD_SOFTWARE_H
