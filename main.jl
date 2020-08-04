using Pkg

Pkg.activate("coveragetempenv", shared=true)

Pkg.add(PackageSpec(name="CoverageTools"))

using CoverageTools

pf = process_folder()

LCOV.writefile("lcov.info", pf)
