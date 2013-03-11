module NumbersAndWords
  module Strategies
    module FiguresConverter
      module Languages
        class Nl < Base
          include Families::Latin
          #include NumbersAndWords::Translations::Nl

          def hundreds_number_to_words
            [super.reverse.join]
          end

          def capacity_iteration capacity
            if FiguresArray::THOUSAND_CAPACITY == capacity
              words = []
              capacity_words = words_in_capacity(capacity)
              words.push(translations.megs(capacity)) unless capacity_words.empty?
              capacity_words.empty? ? [] : [capacity_words, words].join
            else
              super
            end
          end
        end
      end
    end
  end
end
