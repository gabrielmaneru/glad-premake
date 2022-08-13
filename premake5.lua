project "Glad"
    kind "StaticLib"
    language "C"
    staticruntime "on"

	targetdir ("build/" .. outputdir .. "-%{prj.name}/bin")
	objdir ("build/" .. outputdir .. "-%{prj.name}/obj")

	files
	{
        "include/**.h",
        "src/**.c"
    }

    includedirs
	{
        "include"
    }
    
	filter "system:windows"
        systemversion "latest"
