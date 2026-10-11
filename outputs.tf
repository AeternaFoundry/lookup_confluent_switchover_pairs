output "switchover_pairs_lookup_id" {
  description = "Map of id values across all switchover_pairs_lookup, keyed the same as var.switchover_pairs_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_switchover_pairs.switchover_pairs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "switchover_pairs_lookup_environment_crn" {
  description = "Map of environment_crn values across all switchover_pairs_lookup, keyed the same as var.switchover_pairs_lookup except keys with no environment_crn are omitted"
  value       = { for k, v in data.confluent_switchover_pairs.switchover_pairs_lookup : k => v.environment_crn if v.environment_crn != null && length(v.environment_crn) > 0 }
}
output "switchover_pairs_lookup_switchover_pairs" {
  description = "Map of switchover_pairs values across all switchover_pairs_lookup, keyed the same as var.switchover_pairs_lookup except keys with no switchover_pairs are omitted"
  value       = { for k, v in data.confluent_switchover_pairs.switchover_pairs_lookup : k => v.switchover_pairs if v.switchover_pairs != null && length(v.switchover_pairs) > 0 }
}

