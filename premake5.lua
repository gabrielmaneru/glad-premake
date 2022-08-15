project "glad"
    kind "StaticLib"
    language "C"
    staticruntime "on"

	targetdir ("build/" .. outputdir .. "-%{prj.name}/bin")
	objdir ("build/" .. outputdir .. "-%{prj.name}/obj")

	files
	{
        "src/**.c"
    }

    includedirs
	{
        "include"
    }
    
	filter "system:windows"
        systemversion "latest"

		defines 
		{ 
			"_CRT_SECURE_NO_WARNINGS"
		}
