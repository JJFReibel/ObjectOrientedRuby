=begin
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=end
class Car
   attr_reader :wheels, :doors, :cylinders
   attr_writer :wheels, :doors, :cylinders
   def initialize(wheels, doors, cylinders)
      @wheels = wheels
      @doors = doors
      @cylinders = cylinders
   end

   def addWheels(wheels)
      @wheels = self.wheels + 1
   end

   def addDoors(doors)
      @doors = self.doors + 1
   end

   def addCylinders(cylinders)
      @cylinders = self.cylinders + 1
   end

   def deleteWheels(wheels)
      @wheels = self.wheels - 1
   end

   def deleteDoors(doors)
      @doors = self.doors - 1
   end

   def deleteCylinders(cylinders)
      @cylinders = self.cylinders - 1
   end
end

puts "Creating car."
subaru = Car.new(4, 4, 4)
puts "Wheels check: " + subaru.wheels.to_s
puts "Doors check: " + subaru.doors.to_s
puts "Cylinders check: " + subaru.cylinders.to_s
puts ""
puts "Adding wheel directly to car object."
subaru.wheels = 5
puts "Wheels check: " + subaru.wheels.to_s
puts "Doors check: " + subaru.doors.to_s
puts "Cylinders check: " + subaru.cylinders.to_s
puts ""
puts "Adding wheel to car object using method."
subaru.deleteWheels(1)
puts "Wheels check: " + subaru.wheels.to_s
puts "Doors check: " + subaru.doors.to_s
puts "Cylinders check: " + subaru.cylinders.to_s
puts ""
