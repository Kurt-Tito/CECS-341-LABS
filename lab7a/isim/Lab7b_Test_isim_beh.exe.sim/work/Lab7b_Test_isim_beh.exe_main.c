/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002708701374_1957175458_init();
    work_m_00000000002289384195_1463177816_init();
    work_m_00000000000046546696_0932725994_init();
    work_m_00000000003317158614_2138213552_init();
    work_m_00000000003557396715_2928743760_init();
    work_m_00000000000093211204_2176853631_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000093211204_2176853631");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
