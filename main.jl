using Pkg

Pkg.activate("coveragetempenv", shared=true)

Pkg.add(PackageSpec(name="CoverageTools"))

using CoverageTools

dir = get(ENV, "INPUT_DIRECTORY", "src")
pf = process_folder(dir)

LCOV.writefile("lcov.info", pf)
