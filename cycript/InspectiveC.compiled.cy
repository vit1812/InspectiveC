var flushLogFile,disableCompleteLogging,enableCompleteLogging,disableLogging,enableLogging,unwatchSelector,watchSelector,unwatchSelectorOnClass,watchSelectorOnClass,unwatchClass,watchClass,unwatchSelectorOnObject,watchSelectorOnObject,unwatchObject,watchObject,setMaximumRelativeLoggingDepth,handle,classSelFunc,objSelFunc,voidFunc,selFunc,classFunc,objFunc,intFunc;intFunc=new Type("v").functionWith(int);objFunc=new Type("v").functionWith(id);classFunc=new Type("v").functionWith(Class);selFunc=new Type("v").functionWith(SEL);voidFunc=new Type("v").functionWith();objSelFunc=new Type("v").functionWith(id,SEL);classSelFunc=new Type("v").functionWith(Class,SEL);handle=dlopen("/usr/lib/libinspectivec.dylib",RTLD_NOW);setMaximumRelativeLoggingDepth=intFunc(dlsym(handle,"InspectiveC_setMaximumRelativeLoggingDepth"));watchObject=objFunc(dlsym(handle,"InspectiveC_watchObject"));unwatchObject=objFunc(dlsym(handle,"InspectiveC_unwatchObject"));watchSelectorOnObject=objSelFunc(dlsym(handle,"InspectiveC_watchSelectorOnObject"));unwatchSelectorOnObject=objSelFunc(dlsym(handle,"InspectiveC_unwatchSelectorOnObject"));watchClass=classFunc(dlsym(handle,"InspectiveC_watchInstancesOfClass"));unwatchClass=classFunc(dlsym(handle,"InspectiveC_unwatchInstancesOfClass"));watchSelectorOnClass=classSelFunc(dlsym(handle,"InspectiveC_watchSelectorOnInstancesOfClass"));unwatchSelectorOnClass=classSelFunc(dlsym(handle,"InspectiveC_unwatchSelectorOnInstancesOfClass"));watchSelector=selFunc(dlsym(handle,"InspectiveC_watchSelector"));unwatchSelector=selFunc(dlsym(handle,"InspectiveC_unwatchSelector"));enableLogging=voidFunc(dlsym(handle,"InspectiveC_enableLogging"));disableLogging=voidFunc(dlsym(handle,"InspectiveC_disableLogging"));enableCompleteLogging=voidFunc(dlsym(handle,"InspectiveC_enableCompleteLogging"));disableCompleteLogging=voidFunc(dlsym(handle,"InspectiveC_disableCompleteLogging"));flushLogFile=voidFunc(dlsym(handle,"InspectiveC_flushLogFile"))
