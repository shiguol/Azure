Azure
=====

iOS-Test

Azure 项目使用 worksapce 进行子项目组织；
Azure.workspace
..Azure(application)
..AzureModel(static library)

而项目对外部库的依赖使用 Cocopods 进行管理，较好地实现不同项目的依赖和
包含问题；具体请查看 Podfile 的配置；

这样组织代码以后，网络、基础组件都在 AzureModel 静态库中，应用具体实现
在 Azure 项目中；同时，他们依赖不同的外部组件，而这些依赖会写在同一个配
置文件中；

last update: 10/16/2013 14:28

