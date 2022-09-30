class CanBo
    attr_accessor :name_160, :age_160, :gender_160, :address_160

    def initialize name_160, age_160, gender_160, address_160
        @name_160 = name_160
        @age_160 = age_160
        @gender_160 = gender_160
        @address_160 = address_160
    end

    def display
        puts "Name: #{@name_160}"
        puts "Age: #{@age_160}"
        puts "Gender: #{@gender_160}"
        puts "Address: #{@address_160}"
    end
end

class CongNhan < CanBo
     attr_accessor :grade_160

    def initialize name_160, age_160, gender_160, address_160, grade_160
        super(name_160, age_160, gender_160, address_160)
        @grade_160 = grade_160
    end

    def display
        super()
        puts "Grade: #{@grade_160}"
    end
end

class KySu < CanBo
    attr_accessor :branch_160

    def initialize name_160, age_160, gender_160, address_160, branch_160
        super(name_160, age_160, gender_160, address_160)
        @branch_160 = branch_160
    end

    def display
        super()
        puts "Branch: #{@branch_160}"
    end
end

class NhanVien < CanBo
    attr_accessor :job_160

    def initialize name_160, age_160, gender_160, address_160, job_160
        super(name_160, age_160, gender_160, address_160)
        @job_160 = job_160
    end

    def display
        super()
        puts "Job: #{@job_160}"
    end
end

class QuanLyCanBo
    attr_accessor :danhSachCanBo_160

    def initialize
        @danhSachCanBo_160 = Array.new    
    end

    def addNewCanBo name, age, gender, address
        canbo_160 = CanBo.new(name_160, age_160, gender_160, address_160)
        @danhSachCanBo_160.push(canbo_160)
    end

end

class Main
    counter_160 = 0
    quanLyCanBo_160 = QuanLyCanBo.new()

    until counter_160 == -1 do
        puts "1. Them"
        puts "-1. Thoat"
        print "Nhap: "
        counter_160 = gets
        if counter_160.to_i == -1
            exit
        end
        if counter_160.to_i == 1
            print "Nhap ten: "
            ten_160 = gets
            print "Nhap tuoi: "
            tuoi_160 = gets
            print "Nhap gioi tinh: "
            gioiTinh_160 = gets
            print "Nhap dia chi: "
            diaChi_160 = gets
            quanLyCanBo_160.addNewCanBo(ten_160, tuoi_160, gioiTinh_160, diaChi_160)
        end
    end
end