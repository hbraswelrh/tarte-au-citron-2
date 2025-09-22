# Procedure

## Requirements

Ensure you have completed the [ComplyTime Skills Discovery Course](https://github.com/complytime/creme-brulee)
Review the baseline-demo [recording]().

Familiarize yourself with [Open Policy Agent](https://www.openpolicyagent.org/) and [Rego]() language.

## User Journey

Update Compliance-As-Code artifacts written in `gemara`

```tree
└── src
    ├── catalogs # add new controls or evaluations here
    │   └── osps.yml
    ├── guidance 
    │   └── 800_161.yml
    ├── plans # update evaluation control and procedure plans here
    │   └── osps.yml
    └── policy.yaml
```

Updating the `gemara` artifacts will allow your policy to be evaluated. The `Generate` workflow will run in CI and create an OSCAL Component Definition and the Policy that can be used to fill out the `policy.yaml`.

`policy-templates` are written in `Rego` and are used to generate the `policy.yaml` file. The [CONTRIBUTING.md](https://github.com/complytime/baseline-demo/blob/main/CONTRIBUTING.md#step-2-write-new-policies) file here outlines the procedure.

A `policy.yaml` file will be generated and can be used to fill out the existing `policy.yaml`.

The `Report` workflow will run in CI and generate a report with an `assessment-results.md` that can be used to review Findings and Passed rules.


