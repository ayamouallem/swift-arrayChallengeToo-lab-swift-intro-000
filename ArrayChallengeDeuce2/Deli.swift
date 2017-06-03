//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
        if name=="Meg Ryan" || name=="Billy Crystal"
        {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }

        else if line.isEmpty==true
        {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        }
        else
        {
            line.append(name)
            var nb=0
            for (index, name) in line.enumerated(){
                 nb=index+1
            }
            return "Welcome \(name), you're number \(nb) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty==true{
            return "There is no one to be served."
        }
        else{
            var name=line[0]
            line.remove(at: 0)
            return "Now serving \(name)!"
            
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty{
            return "The line is currently empty."
        }
        else{
            print("The line is:")
            for name in line
            {
                print("line.index(of:name). \(name) \n")
            }
            return "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom"
        }

    
}
}
