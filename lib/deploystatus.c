#include "ants.c"
KANTSStatus p_k_ants_get_deploy_status()
{
    KANTSStatus ret;
    uint16_t    resp;
    ret = k_ants_get_deploy_status(&resp);
    return ret;
}

