CREATE MIGRATION m1wtettootx5bquafwiaiekmuno56ejcu6z6c6wyhz3kcwrl4fvyka
    ONTO m1nhknu3gi22tx2qmgrxmfwmip4p4m7nudkh4a3kgk4nldslbxyjbq
{
  ALTER TYPE default::Person {
      CREATE PROPERTY full_name := ((((.first_name ++ ' ') ++ .last_name) IF EXISTS (.last_name) ELSE .first_name));
  };
};
