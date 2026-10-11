data "confluent_switchover_pairs" "switchover_pairs_lookup" {
  for_each = var.switchover_pairs_lookup

  environment_crn = each.value.environment_crn
}

