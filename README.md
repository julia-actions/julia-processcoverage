<p align="center">
  <a href="https://github.com/actions/typescript-action/actions"><img alt="typescript-action status" src="https://github.com/actions/typescript-action/workflows/build-test/badge.svg"></a>
</p>

## Usage

See [PkgTemplates.jl](https://github.com/invenia/PkgTemplates.jl/blob/master/test/fixtures/AllPlugins/.github/workflows/ci.yml) for a complete example.

```yaml

      - uses: julia-actions/julia-processcoverage@v1
      - uses: codecov/codecov-action@v1
        with:
          file: lcov.info
```

One can also specify the directory or directories to use via the `directories` input (which defaults to `src`). E.g.
```yaml

      - uses: julia-actions/julia-processcoverage@v1
        with:
          directories: src,examples
      - uses: codecov/codecov-action@v1
        with:
          file: lcov.info
```
instructs the action to look for coverage information in both `src` and an `examples` folder. Likewise, use
```yaml
      - uses: julia-actions/julia-processcoverage@v1
        with:
          directories: path/to/subdir/package/src
      - uses: codecov/codecov-action@v1
        with:
          file: lcov.info
```
to get coverage information from a package in a subdirectory of the repo.
