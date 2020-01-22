module Humanize
  class Es
    INFINITY = 'infinito'.freeze
    UNDEFINED = 'indefinido'.freeze
    NEGATIVE = 'menos'.freeze
    POINT = 'con'.freeze
    LOTS = [nil, 'mil', 'millón', 'mil millones', 'trillón', 'cuatrillón', 'trillón', 'sextillion', 'septillion', 'octillion', 'nonillion', 'decillion', 'undecillion', 'duodecillion', 'tredecillion', 'quattuordecillion', 'quindecillion', 'sexdecillion', 'septendecillion', 'octodecillion', 'novemdecillion', 'vigintillion', 'unvigintillion', 'duovigintillion', 'trevigintillion', 'quattuortillion', 'quinvigintillion', 'sexvigintillion', 'septenvigintillion', 'octovigintillion', 'novemvigintillion', 'trigintillion', 'untrigintillion', 'duotrigintillion', 'trestrigintillion', 'quattuortrigintillion', 'quintrigintillion', 'sextrigintillion', 'septentrigintillion', 'octotrigintillion', 'novemtrigintillion', 'quadragintillion', 'unquadragintillion', 'duoquadragintillion', 'trequadragintillion', 'quattuorquadragintillion', 'quinquadragintillion', 'sesquadragintillion', 'septenquadragintillion', 'octoquadragintillion', 'novenquadragintillion', 'quinquagintillion'].freeze
    SUB_ONE_GROUPING = ['cero', 'uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete', 'ocho', 'nueve', 'diez', 'once', 'doce', 'trece', 'catorce', 'quince', 'dieciseis', 'diecisiete', 'dieciocho', 'diecinueve', 'veinte', 'veintiuno', 'veintidós', 'veintitrés', 'veinticuatro', 'veinticinco', 'veintiseis', 'veintisiete', 'veintiocho', 'veintinueve', 'treinta', 'treinta y uno', 'treinta y dos', 'treinta y tres', 'treinta y cuatro', 'treinta y cinco', 'treinta y seis', 'treinta y siete', 'treinta y ocho', 'treinta y nueve', 'cuarenta', 'cuarenta y uno', 'cuarenta y dos', 'cuarenta y tres', 'cuarenta y cuatro', 'cuarenta y cinco', 'cuarenta y seis', 'cuarenta y siete', 'cuarenta y ocho', 'cuarenta y nueve', 'cincuenta', 'cincuenta y uno', 'cincuenta y dos', 'cincuenta y tres', 'cincuenta y cuatro', 'cincuenta y cinco', 'cincuenta y seis', 'cincuenta y siete', 'cincuenta y ocho', 'cincuenta y nueve', 'sesenta', 'sesenta y uno', 'sesenta y dos', 'sesenta y tres', 'sesenta y cuatro', 'sesenta y cinco', 'sesenta y seis', 'sesenta y siete', 'sesenta y ocho', 'sesenta y nueve', 'setenta', 'setenta y uno', 'setenta y dos', 'setenta y tres', 'setenta y cuatro', 'setenta y cinco', 'setenta y seis', 'setenta y siete', 'setenta y ocho', 'setenta y nueve', 'ochenta', 'ochenta y uno', 'ochenta y dos', 'ochenta y tres', 'ochenta y cuatro', 'ochenta y cinco', 'ochenta y seis', 'ochenta y siete', 'ochenta y ocho', 'ochenta y nueve', 'noventa', 'noventa y uno', 'noventa y dos', 'noventa y tres', 'noventa y cuatro', 'noventa y cinco', 'noventa y seis', 'noventa y siete', 'noventa y ocho', 'noventa y nueve', 'cien', 'ciento uno', 'ciento dos', 'ciento tres', 'ciento cuatro', 'ciento cinco', 'ciento seis', 'ciento siete', 'ciento ocho', 'ciento nueve', 'ciento diez', 'ciento once', 'ciento doce', 'ciento trece', 'ciento catorce', 'ciento quince', 'ciento dieciseis', 'ciento diecisiete', 'ciento dieciocho', 'ciento diecinueve', 'ciento veinte', 'ciento veintiuno', 'ciento veintidos', 'ciento veinte tres', 'ciento veinticuatro', 'ciento dos tw enty-five', 'ciento veintiseis', 'ciento veintisiete', 'ciento veintiocho', 'ciento veintinueve', 'ciento treinta', 'uno ciento treinta y uno', 'ciento treinta y dos', 'ciento treinta y tres', 'ciento treinta y cuatro', 'ciento treinta y cinco', 'ciento treinta y seis', 'ciento treinta y siete', 'ciento treinta y ocho', 'ciento treinta y nueve', 'ciento cuarenta', 'ciento cuarenta y uno', 'ciento cuarenta -dos', 'ciento cuarenta y tres', 'ciento cuarenta y cuatro', 'ciento cuarenta y cinco', 'ciento cuarenta y seis', 'ciento cuarenta y siete', 'ciento cuarenta y ocho', 'ciento cuarenta y nueve', 'ciento cincuenta', 'ciento cincuenta y uno', 'ciento cincuenta y dos', 'ciento cincuenta y tres', 'ciento cincuenta y cuatro', 'ciento cincuenta y cinco', 'ciento cincuenta y seis', 'ciento cincuenta y siete', 'ciento cincuenta y ocho', 'ciento cincuenta y nueve', 'ciento sesenta', 'ciento sesenta y uno', 'ciento sesenta y dos', 'ciento sesenta y tres', 'ciento sesenta- cuatro', 'ciento sesenta y cinco', 'ciento sesenta y seis', 'ciento sesenta y siete', 'ciento sesenta y ocho', 'ciento sesenta y nueve', 'uno ciento setenta', 'ciento setenta y uno', 'ciento setenta y dos', 'ciento setenta y tres', 'ciento setenta y cuatro', 'ciento setenta y cinco', 'ciento setenta y seis', 'ciento setenta y siete', 'ciento setenta y ocho', 'ciento setenta y nueve', 'ciento ochenta', 'ciento ochenta y uno', 'ciento ochenta y dos', 'ciento ochenta y tres', 'ciento ochenta y cuatro', 'ciento ochenta y cinco', 'ciento ochenta y seis', 'cien y ochenta y siete', 'ciento ochenta y ocho', 'ciento ochenta y nueve', 'ciento noventa', 'ciento noventa y uno', 'ciento noventa y dos', 'ciento noventa y tres', 'ciento noventa y cuatro', 'ciento noventa y cinco', 'ciento noventa y seis', 'cien y noventa y siete', 'ciento noventa y ocho', 'ciento noventa y nueve', 'doscientos', 'doscientos uno', 'doscientos dos', 'doscientos tres', 'doscientos cuatro', 'doscientos cinco', 'doscientos seis', 'doscientos siete', 'doscientos ocho', 'doscientos nueve', 'doscientos diez', 'doscientos once', 'doscientos doce', 'doscientos trece', 'doscientos catorce', 'doscientos quince', 'doscientos dieciseis', 'doscientos diecisiete', 'dos ciento dieciocho', 'doscientos diecinueve', 'doscientos veinte', 'doscientos veintiuno', 'doscientos veintidos', 'doscientos veintitres', 'doscientos veinticuatro', 'doscientos veinticinco', 'doscientos veintiseis', 'doscientos veintisiete', 'dos ciento veintiocho', 'doscientos veintinueve', 'doscientos treinta', 'doscientos treinta y uno', 'doscientos treinta y dos', 'doscientos treinta y tres', 'doscientos treinta y cuatro', 'doscientos treinta y cinco', 'doscientos treinta y seis', 'doscientos treinta y siete', 'doscientos treinta y ocho', 'doscientos treinta -nueve', 'doscientos cuarenta', 'doscientos cuarenta y uno', 'doscientos cuarenta y dos', 'doscientos cuarenta y tres', 'doscientos cuarenta y cuatro', 'doscientos y cuarenta y cinco', 'doscientos cuarenta y seis', 'doscientos cuarenta y siete', 'doscientos cuarenta y ocho', 'doscientos cuarenta y nueve', 'doscientos cincuenta', 'doscientos cincuenta y uno', 'doscientos cincuenta y dos', 'doscientos cincuenta y tres', 'doscientos cincuenta y cuatro', 'doscientos cincuenta y cinco', 'doscientos cincuenta- seis', 'doscientos cincuenta y siete', 'doscientos cincuenta y ocho', 'doscientos cincuenta y nueve', 'doscientos sesenta', 'doscientos sesenta -uno', 'doscientos sesenta y dos', 'doscientos sesenta y tres', 'doscientos sesenta y cuatro', 'doscientos sesenta y cinco', 'doscientos sesenta y seis', 'doscientos sesenta y siete', 'doscientos sesenta y ocho', 'doscientos sesenta y nueve', 'doscientos setenta', 'doscientos setenta y uno', 'doscientos setenta y dos', 'doscientos setenta y tres', 'doscientos setenta y cuatro', 'doscientos setenta y cinco', 'doscientos setenta y seis', 'doscientos setenta y siete', 'doscientos setenta y ocho', 'doscientos setenta y nueve', 'doscientos ochenta', 'doscientos ochenta y uno', 'doscientos ochenta y dos', 'doscientos ochenta y tres', 'dos ciento ochenta y cuatro', 'doscientos ochenta y cinco', 'doscientos ochenta y seis', 'doscientos ochenta y siete', 'doscientos ochenta y ocho', 'doscientos ochenta y nueve', 'doscientos noventa', 'doscientos noventa y uno', 'doscientos noventa y dos', 'doscientos noventa y tres', 'doscientos a noventa y cuatro', 'doscientos noventa y cinco', 'doscientos noventa y seis', 'doscientos noventa y siete', 'doscientos noventa y ocho', 'doscientos noventa y nueve', 'trescientos', 'trescientos uno', 'trescientos dos', 'trescientos tres', 'trescientos cuatro', 'trescientos cinco', 'trescientos seis', 'tres ciento siete', 'trescientos ocho', 'trescientos nueve', 'trescientos diez', 'trescientos once', 'trescientos doce', 'trescientos trece', 'trescientos y catorce', 'trescientos quince', 'trescientos dieciseis', 'trescientos diecisiete', 'trescientos dieciocho', 'trescientos diecinueve', 'trescientos veinte', 'trescientos veintiuno', 'trescientos veintidos', 'trescientos veintitres', 'trescientos veinticuatro', 'trescientos veinticinco', 'trescientos veintiseis', 'trescientos veintisiete', 'trescientos veintiuno ght', 'trescientos veintinueve', 'trescientos treinta', 'trescientos treinta y uno', 'trescientos treinta y dos', 'trescientos treinta y tres', 'trescientos treinta y cuatro', 'trescientos treinta y cinco', 'trescientos treinta y seis', 'trescientos treinta y siete', 'trescientos treinta y ocho', 'trescientos treinta y nueve', 'trescientos cuarenta', 'trescientos cuarenta y uno', 'trescientos cuarenta y dos', 'trescientos cuarenta y tres', 'trescientos cuarenta y cuatro', 'trescientos cuarenta y cinco', 'trescientos cuarenta y seis', 'trescientos cuarenta y siete', 'trescientos cuarenta y ocho', 'trescientos cuarenta y nueve', 'trescientos cincuenta', 'trescientos cincuenta -uno', 'trescientos cincuenta y dos', 'trescientos cincuenta y tres', 'trescientos cincuenta y cuatro', 'trescientos cincuenta y cinco', 'trescientos cincuenta y seis', 'trescientos cincuenta y siete', 'trescientos cincuenta y ocho', 'trescientos cincuenta y nueve', 'tres ciento sesenta', 'trescientos sesenta y uno', 'trescientos sesenta y dos', 'trescientos sesenta y tres', 'trescientos sesenta y cuatro', 'trescientos sesenta y cinco', 'trescientos sesenta y seis', 'trescientos sesenta y siete', 'trescientos sesenta y ocho', 'trescientos sesenta y nueve', 'trescientos setenta', 'trescientos setenta y uno', 'trescientos setenta y dos', 'trescientos setenta y tres', 'trescientos setenta y cuatro', 'trescientos setenta y cinco', 'trescientos setenta y seis', 'trescientos y setenta y siete', 'trescientos setenta y ocho', 'trescientos setenta y nueve', 'trescientos ochenta', 'trescientos ochenta y uno', 'trescientos ochenta y dos', 'trescientos ochenta y tres', 'trescientos ochenta y cuatro', 'trescientos ochenta y cinco', 'trescientos ochenta y seis', 'trescientos ochenta y siete', 'trescientos ochenta- ocho', 'trescientos ochenta y nueve', 'trescientos noventa', 'th ree ciento noventa y uno', 'trescientos noventa y dos', 'trescientos noventa y tres', 'trescientos noventa y cuatro', 'trescientos noventa y cinco', 'trescientos noventa- seis', 'trescientos noventa y siete', 'trescientos noventa y ocho', 'trescientos noventa y nueve', 'cuatrocientos', 'cuatrocientos uno', 'cuatrocientos dos', 'cuatrocientos tres', 'cuatrocientos cuatro', 'cuatrocientos cinco', 'cuatrocientos seis', 'cuatrocientos siete', 'cuatrocientos ocho', 'cuatrocientos nueve', 'cuatro ciento diez', 'cuatrocientos once', 'cuatrocientos doce', 'cuatrocientos trece', 'cuatrocientos catorce', 'cuatrocientos quince', 'cuatrocientos dieciseis', 'cuatrocientos y diecisiete', 'cuatrocientos dieciocho', 'cuatrocientos diecinueve', 'cuatrocientos veinte', 'cuatrocientos veintiuno', 'cuatrocientos veintidos', 'cuatrocientos veintitres', 'cuatrocientos veinticuatro', 'cuatrocientos veinticinco', 'cuatrocientos veintiseis', 'cuatrocientos veintisiete', 'cuatrocientos veintiocho', 'cuatrocientos veintinueve', 'cuatrocientos treinta', 'cuatrocientos treinta y uno', 'cuatrocientos treinta y dos', 'cuatrocientos treinta y tres', 'cuatrocientos treinta y cuatro', 'cuatrocientos treinta y cinco', 'cuatrocientos treinta y seis', 'cuatrocientos y treinta y siete', 'cuatrocientos treinta y ocho', 'cuatrocientos treinta y nueve', 'cuatrocientos cuarenta', 'cuatrocientos cuarenta y uno', 'cuatrocientos cuarenta y dos', 'cuatrocientos cuarenta y tres', 'cuatrocientos cuarenta y cuatro', 'cuatrocientos cuarenta y cinco', 'cuatrocientos cuarenta y seis', 'cuatrocientos cuarenta y siete', 'cuatrocientos cuarenta- ocho', 'cuatrocientos cuarenta y nueve', 'cuatrocientos cincuenta', 'cuatrocientos cincuenta y uno', 'cuatrocientos cincuenta y dos', 'cuatrocientos cincuenta y tres', 'cuatrocientos cincuenta y cuatro', 'cuatrocientos cincuenta y cinco', 'cuatrocientos cincuenta y seis', 'cuatrocientos cincuenta y siete', 'cuatro hu ndred y cincuenta y ocho', 'cuatrocientos cincuenta y nueve', 'cuatrocientos sesenta', 'cuatrocientos sesenta y uno', 'cuatrocientos sesenta y dos', 'cuatrocientos sesenta y tres', 'cuatrocientos sesenta y cuatro', 'cuatrocientos sesenta y cinco', 'cuatrocientos sesenta y seis', 'cuatrocientos sesenta y siete', 'cuatrocientos sesenta y ocho', 'cuatrocientos sesenta -nueve', 'cuatrocientos setenta', 'cuatrocientos setenta y uno', 'cuatrocientos setenta y dos', 'cuatrocientos setenta y tres', 'cuatrocientos setenta y cuatro', 'cuatrocientos y setenta y cinco', 'cuatrocientos setenta y seis', 'cuatrocientos setenta y siete', 'cuatrocientos setenta y ocho', 'cuatrocientos setenta y nueve', 'cuatrocientos ochenta', 'cuatrocientos ochenta y uno', 'cuatrocientos ochenta y dos', 'cuatrocientos ochenta y tres', 'cuatrocientos ochenta y cuatro', 'cuatrocientos ochenta y cinco', 'cuatrocientos ochenta- seis', 'cuatrocientos ochenta y siete', 'cuatrocientos ochenta y ocho', 'cuatrocientos ochenta y nueve', 'cuatrocientos noventa', 'cuatrocientos noventa y uno', 'cuatrocientos noventa y dos', 'cuatrocientos noventa y tres', 'cuatrocientos noventa y cuatro', 'cuatrocientos noventa y cinco', 'cuatrocientos noventa y seis', 'cuatrocientos noventa y siete', 'cuatrocientos noventa y ocho', 'cuatrocientos noventa y nueve', 'quinientos', 'quinientos uno', 'quinientos dos', 'quinientos tres', 'quinientos cuatro', 'quinientos cinco', 'quinientos seis', 'quinientos siete', 'quinientos ocho', 'quinientos nueve', 'quinientos diez', 'quinientos once', 'quinientos doce', 'quinientos trece', 'quinientos catorce', 'quinientos quince', 'cinco ciento dieciseis', 'quinientos diecisiete', 'quinientos dieciocho', 'quinientos diecinueve', 'quinientos veinte', 'quinientos veintiuno', 'quinientos veintidos', 'quinientos veintitres', 'quinientos veinticuatro', 'cinco hund rojo y veinticinco', 'quinientos veintiseis', 'quinientos veintisiete', 'quinientos veintiocho', 'quinientos veintinueve', 'quinientos treinta', 'quinientos treinta y uno', 'quinientos treinta y dos', 'quinientos treinta y tres', 'quinientos treinta y cuatro', 'quinientos treinta y cinco', 'quinientos treinta -seis', 'quinientos treinta y siete', 'quinientos treinta y ocho', 'quinientos treinta y nueve', 'quinientos cuarenta', 'quinientos cuarenta y uno', 'quinientos y cuarenta y dos', 'quinientos cuarenta y tres', 'quinientos cuarenta y cuatro', 'quinientos cuarenta y cinco', 'quinientos cuarenta y seis', 'quinientos cuarenta y siete', 'quinientos cuarenta y ocho', 'quinientos cuarenta y nueve', 'quinientos cincuenta', 'quinientos cincuenta y uno', 'quinientos cincuenta y dos', 'quinientos cincuenta- tres', 'quinientos cincuenta y cuatro', 'quinientos cincuenta y cinco', 'quinientos cincuenta y seis', 'quinientos f ifty-seven', 'quinientos cincuenta y ocho', 'quinientos cincuenta y nueve', 'quinientos sesenta', 'quinientos sesenta y uno', 'quinientos sesenta y dos', 'cinco ciento sesenta y tres', 'quinientos sesenta y cuatro', 'quinientos sesenta y cinco', 'quinientos sesenta y seis', 'quinientos sesenta y siete', 'quinientos sesenta y ocho', 'quinientos sesenta y nueve', 'quinientos setenta', 'quinientos setenta y uno', 'quinientos setenta y dos', 'quinientos setenta y tres', 'quinientos setenta -cuatro', 'quinientos setenta y cinco', 'quinientos setenta y seis', 'quinientos setenta y siete', 'quinientos setenta y ocho', 'quinientos setenta y nueve', 'quinientos ochenta', 'quinientos ochenta y uno', 'quinientos ochenta y dos', 'quinientos ochenta y tres', 'quinientos ochenta y cuatro', 'quinientos ochenta y cinco', 'quinientos ochenta y seis', 'quinientos ochenta y siete', 'quinientos ochenta y ocho', 'cinco cientos ed y ochenta y nueve', 'quinientos noventa', 'quinientos noventa y uno', 'quinientos noventa y dos', 'quinientos noventa y tres', 'quinientos noventa y cuatro', 'quinientos noventa y cinco', 'quinientos noventa y seis', 'quinientos noventa y siete', 'quinientos noventa y ocho', 'quinientos noventa y nueve', 'seiscientos', 'seiscientos uno', 'seiscientos dos', 'seiscientos tres', 'seiscientos cuatro', 'seiscientos cinco', 'seiscientos seis', 'seiscientos siete', 'seiscientos ocho', 'seiscientos nueve', 'seiscientos diez', 'seiscientos once', 'seiscientos doce', 'seiscientos trece', 'seiscientos catorce', 'seis ciento quince', 'seiscientos dieciseis', 'seiscientos diecisiete', 'seiscientos dieciocho', 'seiscientos diecinueve', 'seiscientos veinte', 'seiscientos veintiuno', 'seiscientos veintidos', 'seiscientos veintitres', 'seiscientos veinticuatro', 'seiscientos a y veinticinco', 'seiscientos veintiseis', 'seiscientos veintisiete', 'seiscientos veintiocho', 'seiscientos veintinueve', 'seiscientos treinta', 'seiscientos treinta y uno', 'seiscientos treinta y dos', 'seiscientos treinta y tres', 'seiscientos treinta y cuatro', 'seiscientos treinta y cinco', 'seiscientos treinta- seis', 'seiscientos treinta y siete', 'seiscientos treinta y ocho', 'seiscientos treinta y nueve', 'seiscientos cuarenta', 'seiscientos cuarenta y uno', 'seiscientos cuarenta y dos', 'seiscientos cuarenta y tres', 'seiscientos cuarenta y cuatro', 'seiscientos cuarenta y cinco', 'seiscientos cuarenta y seis', 'seiscientos cuarenta y siete', 'seiscientos cuarenta y ocho', 'seiscientos cuarenta y nueve', 'seiscientos cincuenta', 'seiscientos cincuenta y uno', 'seiscientos cincuenta y dos', 'seiscientos cincuenta y tres', 'seiscientos cincuenta y cuatro', 'seiscientos cincuenta y cinco', 'seiscientos cincuenta y seis', 'seiscientos cincuenta y siete', 'seiscientos cincuenta-e ight', 'seiscientos cincuenta y nueve', 'seiscientos sesenta', 'seiscientos sesenta y uno', 'seiscientos sesenta y dos', 'seiscientos sesenta y tres', 'seiscientos sesenta y cuatro', 'seiscientos sesenta y cinco', 'seiscientos sesenta y seis', 'seiscientos sesenta y siete', 'seiscientos sesenta y ocho', 'seiscientos sesenta y nueve', 'seiscientos setenta', 'seiscientos setenta y uno', 'seiscientos setenta y dos', 'seiscientos setenta y tres', 'seiscientos setenta y cuatro', 'seiscientos setenta y cinco', 'seiscientos setenta y seis', 'seiscientos setenta y siete', 'seiscientos setenta y ocho', 'seiscientos setenta y nueve', 'seiscientos ochenta', 'seiscientos ochenta -uno', 'seiscientos ochenta y dos', 'seiscientos ochenta y tres', 'seiscientos ochenta y cuatro', 'seiscientos ochenta y cinco', 'seiscientos ochenta y seis', 'seiscientos ochenta y siete', 'seiscientos ochenta y ocho', 'seiscientos ochenta y nueve', 'seiscientos noventa', 'seiscientos noventa y-uno', 'seiscientos noventa y dos', 'seiscientos noventa y tres', 'seiscientos noventa y cuatro', 'seiscientos noventa y cinco', 'seiscientos noventa y seis', 'seiscientos noventa y siete', 'seiscientos noventa y ocho', 'seiscientos noventa y nueve', 'setecientos', 'setecientos uno', 'setecientos dos', 'setecientos tres', 'setecientos cuatro', 'setecientos cinco', 'setecientos seis', 'setecientos siete', 'setecientos ocho', 'setecientos nueve', 'setecientos diez', 'setecientos once', 'setecientos doce', 'setecientos trece', 'setecientos catorce', 'setecientos quince', 'setecientos dieciseis', 'setecientos diecisiete', 'setecientos dieciocho', 'setecientos diecinueve', 'setecientos veinte', 'setecientos veintiuno', 'setecientos veintidos', 'setecientos veintitres', 'setecientos veinticuatro', 'setecientos veinticinco', 'siete hun dred y veintiséis', 'setecientos veintisiete', 'setecientos veintiocho', 'setecientos veintinueve', 'setecientos treinta', 'setecientos treinta y uno', 'setecientos treinta y dos', 'setecientos treinta y tres', 'setecientos treinta y cuatro', 'setecientos treinta y cinco', 'setecientos treinta y seis', 'setecientos treinta -siete', 'setecientos treinta y ocho', 'setecientos treinta y nueve', 'setecientos cuarenta', 'setecientos cuarenta y uno', 'setecientos cuarenta y dos', 'setecientos y cuarenta y tres', 'setecientos cuarenta y cuatro', 'setecientos cuarenta y cinco', 'setecientos cuarenta y seis', 'setecientos cuarenta y siete', 'setecientos cuarenta y ocho', 'setecientos cuarenta y nueve', 'setecientos cincuenta', 'setecientos cincuenta y uno', 'setecientos cincuenta y dos', 'setecientos cincuenta y tres', 'setecientos cincuenta- cuatro', 'setecientos cincuenta y cinco', 'setecientos cincuenta y seis', 'setecientos f ifty-seven', 'setecientos cincuenta y ocho', 'setecientos cincuenta y nueve', 'setecientos sesenta', 'setecientos sesenta y uno', 'setecientos sesenta y dos', 'siete ciento sesenta y tres', 'setecientos sesenta y cuatro', 'setecientos sesenta y cinco', 'setecientos sesenta y seis', 'setecientos sesenta y siete', 'setecientos sesenta y ocho', 'setecientos sesenta y nueve', 'setecientos setenta', 'setecientos setenta y uno', 'setecientos setenta y dos', 'setecientos setenta y tres', 'setecientos setenta -cuatro', 'setecientos setenta y cinco', 'setecientos setenta y seis', 'setecientos setenta y siete', 'setecientos setenta y ocho', 'setecientos setenta y nueve', 'setecientos ochenta', 'setecientos ochenta y uno', 'setecientos ochenta y dos', 'setecientos ochenta y tres', 'setecientos ochenta y cuatro', 'setecientos ochenta y cinco', 'setecientos ochenta y seis', 'setecientos ochenta y siete', 'setecientos y ochenta y ocho', 'setecientos ochenta y nueve', 'setecientos noventa', 'setecientos noventa y uno', 'setecientos noventa y dos', 'setecientos noventa y tres', 'setecientos noventa y cuatro', 'setecientos noventa y cinco', 'setecientos noventa y seis', 'setecientos noventa y siete', 'setecientos noventa y ocho', 'setecientos noventa- nueve', 'ochocientos', 'ochocientos uno', 'ochocientos dos', 'ochocientos tres', 'ochocientos cuatro', 'ochocientos cinco', 'ochocientos seis', 'ochocientos siete', 'ochocientos ocho', 'ochocientos nueve', 'ochocientos diez', 'ochocientos once', 'ochocientos doce', 'ochocientos trece', 'ochocientos catorce', 'ochocientos quince', 'ochocientos dieciseis', 'ochocientos diecisiete', 'ochocientos dieciocho', 'ochocientos diecinueve', 'ochocientos veinte', 'ocho ciento veintiuno', 'ochocientos dos enty-two', 'ochocientos veintitres', 'ochocientos veinticuatro', 'ochocientos veinticinco', 'ochocientos veintiseis', 'ochocientos veintisiete', 'ochocientos veintiocho', 'ochocientos veintinueve', 'ochocientos treinta', 'ochocientos treinta y uno', 'ochocientos treinta y dos', 'ochocientos treinta y tres', 'ochocientos treinta y cuatro', 'ochocientos treinta y cinco', 'ochocientos treinta y seis', 'ochocientos treinta y siete', 'ochocientos treinta y ocho', 'ochocientos y treinta y nueve', 'ochocientos cuarenta', 'ochocientos cuarenta y uno', 'ochocientos cuarenta y dos', 'ochocientos cuarenta y tres', 'ochocientos cuarenta y cuatro', 'ochocientos cuarenta y cinco', 'ochocientos cuarenta y seis', 'ochocientos cuarenta y siete', 'ochocientos cuarenta y ocho', 'ochocientos cuarenta y nueve', 'ochocientos cincuenta', 'ochocientos cincuenta y uno', 'ochocientos cincuenta y dos', 'ochocientos cincuenta ree', 'ochocientos cincuenta y cuatro', 'ochocientos cincuenta y cinco', 'ochocientos cincuenta y seis', 'ochocientos cincuenta y siete', 'ochocientos cincuenta y ocho', 'ocho ciento cincuenta y nueve', 'ochocientos sesenta', 'ochocientos sesenta y uno', 'ochocientos sesenta y dos', 'ochocientos sesenta y tres', 'ochocientos sesenta y cuatro', 'ochocientos sesenta y cinco', 'ochocientos sesenta y seis', 'ochocientos sesenta y siete', 'ochocientos sesenta y ocho', 'ochocientos sesenta y nueve', 'ochocientos setenta', 'ochocientos setenta y uno', 'ochocientos setenta y dos', 'ochocientos setenta y tres', 'ochocientos setenta y cuatro', 'ochocientos setenta y cinco', 'ochocientos y setenta y seis', 'ochocientos setenta y siete', 'ochocientos setenta y ocho', 'ochocientos setenta y nueve', 'ochocientos ochenta', 'ochocientos ochenta y uno', 'ochocientos ochenta y dos', 'ochocientos ochenta y tres', 'ochocientos ochenta -cuatro', 'ochocientos ochenta y cinco', 'ochocientos ochenta y seis', 'ochocientos ochenta y siete', 'ochocientos ochenta y ocho', 'ochocientos ochenta y nueve', 'ochocientos noventa', 'ochocientos noventa y uno', 'ochocientos noventa y dos', 'ochocientos noventa y tres', 'ochocientos noventa y cuatro', 'ochocientos noventa y cinco', 'ochocientos noventa y seis', 'ochocientos noventa y siete', 'ochocientos noventa y ocho', 'ochocientos noventa y nueve', 'novecientos', 'novecientos uno', 'novecientos dos', 'novecientos tres', 'novecientos cuatro', 'novecientos cinco', 'novecientos seis', 'novecientos siete', 'novecientos ocho', 'nueve ciento nueve', 'novecientos diez', 'novecientos once', 'novecientos doce', 'novecientos trece', 'novecientos catorce', 'novecientos quince', 'novecientos y dieciseis', 'novecientos diecisiete', 'novecientos dieciocho', 'nueve hun dred y diecinueve', 'novecientos veinte', 'novecientos veintiuno', 'novecientos veintidos', 'novecientos veintitres', 'novecientos veinticuatro', 'nueve ciento veinticinco', 'novecientos veintiseis', 'novecientos veintisiete', 'novecientos veintiocho', 'novecientos veintinueve', 'novecientos treinta', 'novecientos treinta y uno', 'novecientos treinta y dos', 'novecientos treinta y tres', 'novecientos treinta y cuatro', 'novecientos treinta y cinco', 'novecientos treinta -seis', 'novecientos treinta y siete', 'novecientos treinta y ocho', 'novecientos treinta y nueve', 'novecientos cuarenta', 'novecientos cuarenta y uno', 'novecientos y cuarenta y dos', 'novecientos cuarenta y tres', 'novecientos cuarenta y cuatro', 'novecientos cuarenta y cinco', 'novecientos cuarenta y seis', 'novecientos cuarenta y siete', 'novecientos cuarenta y ocho', 'novecientos cuarenta y nueve', 'novecientos cincuenta', 'novecientos f ifty-one', 'novecientos cincuenta y dos', 'novecientos cincuenta y tres', 'novecientos cincuenta y cuatro', 'novecientos cincuenta y cinco', 'novecientos cincuenta y seis', 'novecientos cincuenta y siete', 'novecientos cincuenta y ocho', 'novecientos cincuenta y nueve', 'novecientos sesenta', 'novecientos sesenta y uno', 'novecientos sesenta y dos', 'novecientos sesenta y tres', 'novecientos sesenta y cuatro', 'novecientos sesenta y cinco', 'novecientos sesenta y seis', 'novecientos sesenta y siete', 'novecientos y sesenta y ocho', 'novecientos sesenta y nueve', 'novecientos setenta', 'novecientos setenta y uno', 'novecientos setenta y dos', 'novecientos setenta y tres', 'novecientos setenta y cuatro', 'novecientos setenta y cinco', 'novecientos setenta y seis', 'novecientos setenta y siete', 'novecientos setenta y ocho', 'novecientos setenta- nueve', 'novecientos ochenta', 'novecientos ochenta y uno', 'novecientos ochenta y dos', 'novecientos eig hty-three', 'novecientos ochenta y cuatro', 'novecientos ochenta y cinco', 'novecientos ochenta y seis', 'novecientos ochenta y siete', 'novecientos ochenta y ocho', 'novecientos ochenta y nueve', 'novecientos noventa y nueve', 'novecientos noventa y uno', 'novecientos noventa y dos', 'novecientos noventa y tres', 'novecientos noventa y cuatro', 'novecientos noventa y cinco', 'novecientos noventa y seis', 'novecientos noventa y siete', 'novecientos noventa y ocho', 'novecientos noventa y nueve'].freeze
  end
end
