variable "switchover_pairs_lookup" {
  description = <<EOT
Map of switchover_pairs_lookup, attributes below
Required:
    - environment_crn
EOT

  type = map(object({
    environment_crn = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

