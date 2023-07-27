# Gym Data Base

## Business Plan

1. Sistema exclusivo para el uso en Argentina.
1. Gestión de red de gimnasios exclusivos para la gente registrada.
1. Hay 3 tipos de suscripcion: Plata - Gold - Platinium. Cada suscripción tiene un grupo de gimnasios adheridos. 
1. Cada gimnasio tendrá su personal administrativo.
1. Los entrenadores podran trabajar en tantos gimansios como quieran.
1. Cada actividad contará con un horario y un profesor asociado.
1. Si el cliente deja de abonar su suscripción no tendrá acceso a la red de gimnasios.



## Entity Relationship

1. A **schedule** have many **days** (_1_M_)
1. A **schedule** have many **times** (_1_M_)
1. A **customer** make one **suscription** (_1_1_)
1. Many **traineers** have many **schedule** and many **activities** (_M_M_)
1. Many **traineer** have many **roles** (_M_M_)
1. Many **gyms** have many **traineers** (_M_M_)
1. A **gym** have one **address** (_1_1_)
1. A **address** have one **provinces** (_1_1_)
1. A **gym** have many **administratives** (_1_M_)
1. A **suscription** have one **suscription_type** (_1_1_)
1. A **suscription** have one **customer** (_1_1_)
1. A **customer** have one **login** (_1_1_)



## Entity Relationship Diagram

![Diagram](ERD.png)



