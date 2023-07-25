# Gym Data Base

## Business Plan

1. El sistema de negocio consiste en controlar las clases y actividades a la que un usuario se registra a través de una página web y desde una App movil. El cliente con su DNI se registra en la cuenta (este dato es único) y proporciona una contraseña, para poder gestionar su cuenta.
1. En el gimnasio hay horarios y clases programadas. Pero para el sector musculación es de acceso libre a cualquier hora. 
1. Habran profesores, los cuales pueden estar asignados a muchas actividades dependiendo de lo capacitado que esté y su disposición horaria y trabajar en muchos gimnasios.
1. Las clases estarán definidas en un dia y horario especifico.
1. Habrá diferentes tipos de suscripciones a las cuales dependiendo de la suscripicion permitirá musculación como base y agregar una actividad extra o más a la suscripción.
1. Forma de pago: si el monto es equivalente a 3, 6 meses o 1 año, se le aplicará descuento. 
1. Si el cliente no paga el mes, dejará de estar activo.
1. Si el profesor se enferma y se da de baja estará inactivo, hasta su recuperación.


## Entity Relationship

1. Many **activities** have many **schedules** (_M_M_)
1. A **schedule** have many **days** (_1_M_)
1. A **schedule** have many **times** (_1_M_)
1. A **customer** have one **adresse** (_1_1_)
1. A **customer** make many **payments** (_1_M_)
1. A **customer** make one **suscription** (_1_1_)
1. A **traineer** have one **adresse** (_1_1_)
1. A **traineer** have many **activity_schedule** (_M_M_)
1. Many **traineer** have many **roles** (_M_M_)
1. Many **gyms** have many **traineers** (_M_M_)
1. A **gym** have one **address** (_1_1_)
1. A **gym** have many **administratives** (_1_M_)
1. A **suscription** have one **suscription_type** (_1_1_)
1. A **suscription** have one **customer** (_1_1_)
1. A **suscription** many **gyms** (_1_1_)

## Entity Relationship Diagram

![Diagram](ERD.png)



