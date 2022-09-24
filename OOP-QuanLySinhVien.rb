class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation
    def initialize name, hair, weight, height, age, phone, email, nation
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end
    def display 
        puts "Ten: #{@name}"
        puts "Mau Toc: #{@hair}"
        puts "Can nang: #{@weight}"
        puts "Chieu cao: #{@height}"
        puts "Tuoi: #{@age}"
        puts "SDT: #{@phone}"
        puts "Email: #{@email}"
        puts "Dan toc: #{@nation}"
    end
end

class Student < Human 
    attr_accessor :grade1, :grade2, :grade3
    def initialize name, hair, weight, height, age, phone, email, nation, grade1, grade2, grade3
        super(name, hair, weight, height, age, phone, email, nation)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
    end
    def diemTB
             puts 'Điểm trung bình là %.2f' % [(@grade1.to_f+@grade2.to_f+@grade3.to_f)/3]
            end
    def display
        super()
        puts ("Grade1: #{@grade1}")
        puts ("Grade2: #{@grade2}")
        puts ("Grade3: #{@grade3}")
    end
end


Sv1 = Student.new("Hữu Tường", "Đen", 70, 172, 20, 1911505310160, "tuong0@gmail.com","VIET NAM", 6, 8, 9)
Sv2 = Student.new("Thái Bình","Đen", 60, 160, 21, 1911505310111, "binh@gmai.com","VIET NAM", 9, 9, 9)
Sv3 = Student.new("Hồng Sơn","Đen", 65, 175, 21, 1911505310112, "son@gmai.com","VIET NAM", 10, 9, 9)
puts("====DANH SÁCH SINH VIÊN==== \n")
Sv1.display
Sv1.diemTB
Sv2.display
Sv2.diemTB
Sv3.display
Sv3.diemTB

sinhVien = [Sv1, Sv2, Sv3]
sinhVien = sinhVien.sort_by{|diem| [diem.diemTB]}
sinhVien = sinhVien.reverse
puts "===SINH VIÊN ĐÃ SẮP XẾP=== \n :#{sinhVien}"

