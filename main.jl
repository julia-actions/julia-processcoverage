using Pkg

Pkg.activate("coveragetempenv", shared=true)

Pkg.add(PackageSpec(name="CoverageTools"))

using CoverageTools

directories = get(ENV, "INPUT_DIRECTORIES", "src,ext")
dirs = filter!(!isempty, split(directories, ","))
for dir in dirs
    if dir == "ext"
        continue  # Silently skip this directory
    elseif !isdir(dir)
        error("directory \"$dir\" not found!")
    end
end
dirs = filter!(isdir, dirs)
pfs = mapreduce(process_folder, vcat, dirs)
LCOV.writefile("lcov.info", pfs)
