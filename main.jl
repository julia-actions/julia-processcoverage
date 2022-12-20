using Pkg

Pkg.activate("coveragetempenv", shared=true)

Pkg.add(PackageSpec(name="CoverageTools"))

using CoverageTools

directories = get(ENV, "INPUT_DIRECTORIES", "src,ext")
dirs = filter!(!isempty, split(directories, ","))
for dir in dirs
    isdir(dir) || error("directory \"$dir\" not found!")
end

pfs = mapreduce(process_folder, vcat, dirs)
LCOV.writefile("lcov.info", pfs)
