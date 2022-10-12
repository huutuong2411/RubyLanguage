class Nguoi
    attr_accessor :name_160, :age_160, :work_160, :cmnd_160
    def initialize name_160, age_160, work_160, cmnd_160
        @name_160 = name_160
        @age_160 = age_160
        @work_160 = work_160
        @cmnd_160 = cmnd_160
    end 
    def initialize
    end
    def enter_infomation
        print "Nhập tên : "
        @name_160 = gets.chomp
        print "Nhập tuổi : "
        @age_160 = gets.to_i
        print "Nhập nghê nghiêp: "
        @work_160 = gets.chomp
        print "Nhập số chưng minh nhân dân : "
        @cmnd_160 = gets.to_i
    end
    def info    
        puts "Tên : #{@name_160}"
        puts "Tuối : #{@age_160}"
        puts "Nghê nghiệp : #{@work_160}"
        puts "Chứng minh nhân dân #{@cmnd_160}"
    end
end 

class HoGiaDinh < Nguoi
    attr_accessor :home_160, :member_160, :members_160
    def initialize name_160, age_160, work_160, cmnd_160, home_160, member_160, members_160
        super name_160, age_160, work_160, cmnd_160
        @home_160 = home_160
        @member_160 = member_160
        @members_160 = members_160
    end 
    def initialize
    end
    def enter_infomation
        @members_160 = []
        print "Nhập số nhà: "
        @home_160 = gets.chomp
        print "Nhập số thành viên : "
        @member_160 = gets.to_i
        for i in (0..@member_160 - 1) do
            puts "====Nhập thành viên thứ #{i+1}===="
            member1_160 = Nguoi.new
            member1_160.enter_infomation
            @members_160 << member1_160
        end
    end
   
    def info
        puts "Số nhà : #{@home_160}"
        puts "Số thành viên : #{@member_160}"
        i =1
        @members_160.each do |member_160|
            puts "===thông tin thành viên thứ #{i}==="
            member_160.info
            i = i+1
        end
    end
end
class KhuPho 
    def initialize
    end
    $hogiadinhs_160 = []
    def addHoGiaDinh
        print "Nhập số hộ gia đình : "
        @soluong_160 = gets.to_i
        for i in (0..@soluong_160 - 1) do
            puts "=====Nhập hộ gia đình thứ #{i+1}======"
            hogiadinh_160 = HoGiaDinh.new
            hogiadinh_160.enter_infomation
            $hogiadinhs_160 << hogiadinh_160
        end
    end

    def infomatinon 
        i = 1
        puts "============Thong tin Khu phố ================"   
        $hogiadinhs_160.each do |hogiadinh_160|
            puts "=====Thông tin hộ gia đình thứ #{i}======"
            hogiadinh_160.info
            i = i+1
        end
    end

end

khupho_160 = KhuPho.new
khupho_160.addHoGiaDinh
khupho_160.infomatinon