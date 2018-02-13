workspace "chapter02"
	location "build"
	configurations {
		"Debug", 
		"Release"
	}
	filter { "configurations:Debug" }
		defines { "DEBUG" }
		symbols "On"
	filter { "configurations:Release" }
		defines { "NDEBUG" }
		optimize "On"

project "enumcat"
	location "build"
	kind "ConsoleApp"
	language "C++"
	files {
		"enumcat/*.h",
		"enumcat/*.cpp",
	}
	links {
		"ws2_32.lib"
	}
