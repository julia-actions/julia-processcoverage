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
