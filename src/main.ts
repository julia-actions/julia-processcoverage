import * as core from '@actions/core'
import * as exec from '@actions/exec'
import * as path from 'path';

async function run(): Promise<void> {
  try {
    if (require.main) {
      let rootPath = path.dirname(require.main.filename);

      await exec.exec('julia', ['--color=yes', path.join(rootPath, '..', 'src', 'main.jl')]);
    }
    else {
      core.setFailed('Require method to load root path did not work.')
    }    
  } catch (error) {
    core.setFailed(error.message)
  }
}

run()
