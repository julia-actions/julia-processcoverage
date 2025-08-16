# `julia-actions/julia-processcoverage` Action

## Usage

See [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl/blob/master/test/fixtures/AllPlugins/.github/workflows/CI.yml) for a complete example.

```yaml

      - uses: julia-actions/julia-processcoverage@v1
      - uses: codecov/codecov-action@v5
        with:
          files: lcov.info
          token: ${{ secrets.CODECOV_TOKEN }}
```

One can also specify the directory or directories (comma separated) to use via the `directories` input (which defaults to `src,ext`). E.g.
```yaml

      - uses: julia-actions/julia-processcoverage@v1
        with:
          directories: src,ext,examples
      - uses: codecov/codecov-action@v5
        with:
          files: lcov.info
          token: ${{ secrets.CODECOV_TOKEN }}
```
instructs the action to look for coverage information in `src`, `ext`, and an `examples` folder. Likewise, use
```yaml
      - uses: julia-actions/julia-processcoverage@v1
        with:
          directories: path/to/subdir/package/src
      - uses: codecov/codecov-action@v5
        with:
          files: lcov.info
          token: ${{ secrets.CODECOV_TOKEN }}
```
to get coverage information from a package in a subdirectory of the repo.
