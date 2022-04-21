CREATE MIGRATION m1nhknu3gi22tx2qmgrxmfwmip4p4m7nudkh4a3kgk4nldslbxyjbq
    ONTO m1ajja2pdgzlgrtmfip7pd62u6lkw2hjd52mkeaofzwspjhada5yiq
{
  ALTER TYPE default::Person {
      ALTER PROPERTY last_name {
          SET REQUIRED USING ('_');
      };
  };
};
