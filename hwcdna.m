 function [cdna] = hwcdna(seq)
 % bases = cellstr(seq')';
  bases = seq;
  for ii = 1:length(bases)
      switch bases(ii)
          case 'A'
             cdna{ii} = 'T';
          case'a'
              cdna{ii} = 'T';
          case 'T'
             cdna{ii} = 'A' ;
          case 't'
             cdna{ii} = 'A' ;
          case 'C'
             cdna{ii} = 'G';
          case 'c'
             cdna{ii} = 'G';
          case 'G'
             cdna{ii} = 'C';
          case 'g'
             cdna{ii} = 'C';
      end
  end
 cdna = cell2mat(cdna);



