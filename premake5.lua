-- premake5.lua
workspace "containerpp"
    configurations { "Debug", "Release" }

project "containerpp"
    kind "SharedLib"
    language "C++"
    includedirs { "include" }
    files { "include/**.h", "src/**.cpp" }
    targetdir "lib/%{cfg.buildcfg}"
