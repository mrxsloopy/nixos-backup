let
  server01 = "age1pf5ymp03340kwypzf7vkjxlf80xhukudae3sc734mnzj5eu6u5esfz0jkq";
  mrxsloopy = "age157jcmayegz62553zmduax05rhlxvutd2m0jh9sqhz53xp0q083pqzt0aml";
in
{
  "secrets/ups-passwd.age" = {
    publicKeys = [ server01 mrxsloopy ];
  };
}
