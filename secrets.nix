let
  server01 = "age1p5l788w705jrq7g5a4r9924fdgu902jmmsvk84lfx6t42c6zepzq5hqj74";
  mrxsloopy = "age157jcmayegz62553zmduax05rhlxvutd2m0jh9sqhz53xp0q083pqzt0aml";
in
{
  "secrets/ups-passwd.age" = {
    publicKeys = [ server01 mrxsloopy ];
  };
}
