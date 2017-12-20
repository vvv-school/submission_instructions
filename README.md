## Instructions to download applications

### Prerequisites

- Create from within your GitHub dashboard a token with `repo` and `admin:org` full scopes
- Export the token in your environment: `export GITHUB_TOKEN_VVV_SCHOOL=token-hash-goes-here`
- `sudo apt install ruby`
- `sudo gem install octokit`

### Operations

- `git clone https://github.com/vvv-school/submission_instructions.git`
- `cd submission_instructions`
- `git checkout download_applications`
- `./download vvv-school application_vvvyy` (`yy` is the school year)
