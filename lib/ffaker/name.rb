# encoding: utf-8

module FFaker
  module Name
    extend ModuleUtils
    extend self

    PREFIXES = %w(Mr. Mrs. Ms. Miss Dr.)
    MALE_PREFIXES = %w(Mr. Dr.)
    FEMALE_PREFIXES = %w(Mrs. Ms. Miss Dr.)
    SUFFIXES = %w(Jr. Sr. I II III IV V MD DDS PhD DVM)

    def name
      case rand(10)
      when 0 then "#{prefix} #{first_name} #{last_name}"
      when 1 then "#{first_name} #{last_name} #{suffix}"
      else        "#{first_name} #{last_name}"
      end
    end

    def male_name
      case rand(10)
      when 0 then "#{male_prefix} #{male_first_name} #{last_name}"
      when 1 then "#{male_first_name} #{last_name} #{suffix}"
      else        "#{male_first_name} #{last_name}"
      end
    end

    def female_name
      case rand(10)
      when 0 then "#{female_prefix} #{female_first_name} #{last_name}"
      when 1 then "#{female_prefix} #{female_first_name} #{last_name}"
      else        "#{female_first_name} #{last_name}"
      end
    end

    def first_name
      FIRST_NAMES.sample
    end

    def male_first_name
      MALE_FIRST_NAMES.sample
    end

    def female_first_name
      FEMALE_FIRST_NAMES.sample
    end

    def last_name
      LAST_NAMES.sample
    end

    def prefix
      PREFIXES.sample
    end

    def male_prefix
      MALE_PREFIXES.sample
    end

    def female_prefix
      FEMALE_PREFIXES.sample
    end

    def suffix
      SUFFIXES.sample
    end
  end
end
