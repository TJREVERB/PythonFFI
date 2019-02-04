from libc.stdint cimport uint8_t
from libc.stdint cimport uint16_t
from libc.stdint cimport uint32_t
from libc.stdbool cimport bool
cdef extern from "ants-api.h":
    ctypedef enum KANTSAnt:
        ANT_1, 
        ANT_2, 
        ANT_3, 
        ANT_4
    ctypedef struct ants_telemetry:
        uint16_t raw_temp; 
        uint16_t deploy_status; 
        uint32_t uptime
    ctypedef enum KANTSStatus:
        ANTS_OK, 
        ANTS_ERROR, 
        ANTS_ERROR_CONFIG, 
        ANTS_ERROR_NOT_IMPLEMENTED
    ctypedef enum KANTSController:
        PRIMARY,
        SECONDARY
    KANTSStatus k_ants_init(char * bus, uint8_t primary, uint8_t secondary, uint8_t ant_count, uint32_t timeout)
    void k_ants_terminate()
    KANTSStatus k_ants_configure(KANTSController config)
    KANTSStatus k_ants_reset()
    KANTSStatus k_ants_arm()
    KANTSStatus k_ants_disarm()
    KANTSStatus k_ants_deploy(KANTSAnt antenna, bool override, uint8_t timeout)
    KANTSStatus k_ants_auto_deploy(uint8_t timeout)
    KANTSStatus k_ants_cancel_deploy()
    KANTSStatus k_ants_get_deploy_status(uint16_t * resp)
    KANTSStatus k_ants_get_uptime(uint32_t * uptime)
    KANTSStatus k_ants_get_system_telemetry(ants_telemetry * telem)
    KANTSStatus k_ants_get_activation_count(KANTSAnt antenna, uint8_t * count)
    KANTSStatus k_ants_get_activation_time(KANTSAnt antenna, uint16_t * time)
    KANTSStatus k_ants_watchdog_kick()
    KANTSStatus k_ants_watchdog_start()
    KANTSStatus k_ants_watchdog_stop()
    KANTSStatus k_ants_passthrough(const uint8_t * tx, int tx_len, uint8_t * rx,int rx_len)

def py_k_ants_init(char * bus, uint8_t primary, uint8_t secondary, uint8_t ant_count, uint32_t timeout):
    k_ants_init(bus,primary,secondary,ant_count,timeout)
def py_k_ants_terminate():
    k_ants_terminate()
def py_k_ants_configure(KANTSController config):
    k_ants_configure(config)
def py_k_ants_reset():
    k_ants_reset()
def py_k_ants_arm():
    k_ants_arm()
def py_k_ants_disarm():
    k_ants_disarm()
def py_k_ants_deploy(KANTSAnt antenna, bool override, uint8_t timeout):
    k_ants_deploy(antenna,override,timeout)
def py_k_ants_auto_deploy(uint8_t timeout):
    k_ants_auto_deploy(timeout)
def py_k_ants_cancel_deploy():
    k_ants_cancel_deploy()
def py_k_ants_get_deploy_status(uint16_t * resp):
    k_ants_get_deploy_status(resp)
def py_k_ants_get_uptime(uint32_t * uptime):
    k_ants_get_uptime(uptime)
def py_k_ants_get_system_telemetry(ants_telemetry * telem):
    k_ants_get_system_telemetry(telem)
def py_k_ants_get_activation_count(KANTSAnt antenna, uint8_t * count):
    k_ants_get_activation_count(antenna,count)
def py_k_ants_get_activation_time(KANTSAnt antenna, uint16_t * time):
    k_ants_get_activation_time(antenna,time)
def py_k_ants_watchdog_kick():
    k_ants_watchdog_kick()
def py_k_ants_watchdog_start():
    k_ants_watchdog_start()
def py_k_ants_watchdog_stop():
    k_ants_watchdog_stop()
def py_k_ants_passthrough(const uint8_t * tx, int tx_len, uint8_t * rx,int rx_len):
    k_ants_passthrough(tx,tx_len,rx,rx_len)
