require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#VentureCapitalist<->FundingRound<->Startup

#Base Variables
s = Startup.new("The Younis", "Walid Younis", "Tech")
v = VentureCapitalist.new("B.Warren", 2000000)

#Association Variable
f = FundingRound.new(s, v, "Series A", 250000.5)

#Additional Varibles
s2 = Startup.new("Warren, Inc", "Bree Warren", "Tech")
v2 = VentureCapitalist.new("W. Younis", 50)
f2 = FundingRound.new(s, v, "Series B", 500000.5)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

# Startup
# Startup#name - DONE
# Startup#founder - DONE
# Startup#domain - DONE
# Startup#pivot - DONE
# Startup.all - DONE
# Startup.find_by_founder - DONE
# Startup.domains - DONE

#VentureCapitalist
# VentureCapitalist#name - DONE
# VentureCapitalist#total_worth - DONE
# VentureCapitalist.all - DONE
# VentureCapitalist.tres_commas_club - DONE

#FundingRound
# FundingRound#startup - DON
# FundingRound#venture_capitalist - DONE
# FundingRound#type - DONE
# FundingRound#investment - DONe
# FundingRound.all - DONE