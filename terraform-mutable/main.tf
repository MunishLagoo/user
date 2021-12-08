module "user" {
source = "git::https://github.com/MunishLagoo/test-Terraform-mutable.git//app-module"
ENV = var.ENV
INSTANCE_TYPE= var.INSTANCE_TYPE
SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
OD_INSTANCE_COUNT = var.OD_INSTANCE_COUNT
COMPONENT = "user"
PORT = 8080
IS_PRIVATE_LB = true
LB_RULE_PRIORITY = 105
APP_VERSION = var.APP_VERSION
NEXUS_USER = var.NEXUS_USER
NEXUS_PASS = var.NEXUS_PASS

}

output "INSTANCE_IDS" {
    value = module.user.INSTANCE_IDS
}