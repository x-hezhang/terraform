module "alidns_group_test1" {
  source = "../modules/alicloud/modules/alidns_group"

  alidns_group_name = "test1"
}

module "alidns_group_test2" {
  source = "../modules/alicloud/modules/alidns_group"

  alidns_group_name = "test2"
}

module "alidns_record_acme-challenge_1" {
  source = "../modules/alicloud/modules/alidns_record"

  domain_name   = "fdisk.cc"
  record        = "_acme-challenge"
  record_type   = "txt"
  record_value  = "9_WCAhAILWJY-Yhr2gd7RNmheVsiPryZYIVgKQ1btZc"
  record_status = "ENABLE"
}

module "alidns_record_acme-challenge_2" {
  source = "../modules/alicloud/modules/alidns_record"

  domain_name   = "fdisk.cc"
  record        = "_acme-challenge"
  record_type   = "txt"
  record_value  = "g6n92UrTWU6fork3ZOHnKWPNFaKpCqyEVLLNOuzEYRI"
  record_status = "ENABLE"
}
