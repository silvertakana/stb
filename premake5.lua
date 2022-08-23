project "stb"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir (outputOrigin .."/bin/" .. outputdir .. "/%{prj.name}")
	objdir (outputOrigin .."/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"stb_image.h",
		"stb_image.c",
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"