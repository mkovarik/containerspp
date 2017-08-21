-- premake5.lua

workspace "containerpp"
    configurations { "Debug", "Release" }
    language "C++"
    targetdir "lib/%{cfg.buildcfg}"
    flags { "C++14" }

    filter "configurations:Debug"
        defines { "DEBUG" }
        -- include debugging symbols
        flags { "Symbols" }
        
    filter "configurations:Release"
        defines { "RELEASE" }
        optimize "On"
    
    project "containerpp"
        kind "SharedLib"
        files { "include/**.h", "src/**.cpp" }