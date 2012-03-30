"This is for CSharp compilation
"command -nargs=1 Build ! XXYCSharpBuild.bat <args> , should only set of c#,
"like the way MakeGreen is used
set makeprg=msbuild\ /nologo\ /v:q\ /property:GenerateFullPaths=true
"The above bat file is another way to compile csharp, and it residesi in XXYBatchAndExe\, but it is not as versatile as the one we are using.
