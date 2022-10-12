class ThiSinh
    attr_accessor :soBaoDanh_160, :hoTen_160, :diaChi_160, :mucUuTien_160
    def initialize soBaoDanh_160, hoTen_160, diaChi_160, mucUuTien_160
        @soBaoDanh_160 = soBaoDanh_160
        @hoTen_160 = hoTen_160
        @diaChi_160 = diaChi_160
        @mucUuTien_160 = mucUuTien_160
    end
    def show
        puts ("Số báo danh: #{@soBaoDanh_160}")
        puts ("Tên: #{@hoTen_160}")
        puts ("Địa chỉ: #{@diaChi_160}")
        puts ("Mức độ ưu tiên: #{@mucUuTien_160}")
    end
end
class ThiSinhKA < ThiSinh
    attr_accessor :toan_160, :ly_160, :hoa_160
    def initialize soBaoDanh_160, hoTen_160, diaChi_160, mucUuTien_160, toan_160, ly_160, hoa_160
        super soBaoDanh_160, hoTen_160, diaChi_160, mucUuTien_160
        @toan_160 = toan_160
        @ly_160 = ly_160
        @hoa_160 = hoa_160
    end
    def show
        super
        puts ("Điểm toán: #{@toan_160}")
        puts ("Điểm lý: #{@ly_160}")
        puts ("Điểm hóa: #{@hoa_160}")
    end
end
class ThiSinhKB < ThiSinh
    attr_accessor :toan_160, :hoa_160, :sinh_160
    def initialize soBaoDanh_160, hoTen_160, diaChi_160, mucUuTien_160, toan_160, hoa_160, sinh_160
        super soBaoDanh_160, hoTen_160, diaChi_160, mucUuTien_160
        @toan_160 = toan_160
        @hoa_160 = hoa_160
        @sinh_160 = sinh_160
    end
    def show
        super
        puts ("Điểm toán: #{@toan_160}")
        puts ("Điểm hóa: #{@hoa_160}")
        puts ("Điểm sinh: #{@sinh_160}")
    end
end
class ThiSinhKC < ThiSinh
    attr_accessor :van_160, :su_160, :dia_160
    def initialize  soBaoDanh_160, hoTen_160, diaChi_160, mucUuTien_160, van_160, su_160, dia_160
        super soBaoDanh_160, hoTen_160, diaChi_160, mucUuTien_160
        @van_160 = van_160
        @su_160 = su_160
        @dia_160 = dia_160
    end
    def show
        super
        puts ("Điểm văn: #{@van_160}")
        puts ("Điểm sử: #{@su_160}")
        puts ("Điểm địa: #{@dia_160}")
    end
end
class TuyenSinh
    @@thiSinh = Array.new
    def addCandidate(thiSinh)
        @@thiSinh.push(thiSinh)
    end
    def timkiemtheoSobaodanh(id)
        searchList = @@thiSinh .select { |o| o.soBaoDanh_160 == id}
        searchList.each{ |sl| sl.show}
    end
    def showts()
        @@thiSinh.each{ |thiSinh| thiSinh.show}
    end
end
qlTuyenSinh = TuyenSinh.new()
tsA = ThiSinhKA.new(1,"Phan Hữu Tường", "A", "A", 7,8,9)
tsB = ThiSinhKB.new(2,"Nguyễn Hồng Sơn", "B", "B", 4,6,7 )
tsC = ThiSinhKC.new(3, "Hồ Thái Bình", "C", "C", 8,1,5)

qlTuyenSinh.addCandidate(tsA)
qlTuyenSinh.addCandidate(tsB)
qlTuyenSinh.addCandidate(tsC)
qlTuyenSinh.showts()
puts "<---------*******-------->"
puts "Kết quả tìm kiếm"
qlTuyenSinh.timkiemtheoSobaodanh(2)