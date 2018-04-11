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
    work_m_00000000000124112270_1661724263_init();
    work_m_00000000000284482139_4231019343_init();
    work_m_00000000000214144686_0886308060_init();
    work_m_00000000001261073461_2137181695_init();
    work_m_00000000001916266160_3847731833_init();
    work_m_00000000002122742338_3452492467_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002122742338_3452492467");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
