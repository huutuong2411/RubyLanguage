class TaiLieu
    attr_accessor :maTaiLieu_160, :tenNXB_160, :soBanPhatHanh_160
    def initialize maTaiLieu_160, tenNXB_160, soBanPhatHanh_160
        @maTaiLieu_160 = maTaiLieu_160
        @tenNXB_160 = tenNXB_160
        @soBanPhatHanh_160 = soBanPhatHanh_160
    end
    def display
        puts "Mã tài liệu #@maTaiLieu_160"
        puts "Tên NXB #@tenNXB_160"
        puts "Số bản phát hành #@soBanPhatHanh_160"
    end
end
class Sach < TaiLieu
    attr_accessor :tenTacGia_160, :soTrang_160
    def initialize maTaiLieu_160, tenNXB_160, soBanPhatHanh_160, tenTacGia_160, soTrang_160
        super maTaiLieu_160, tenNXB_160, soBanPhatHanh_160
        @tenTacGia_160 = tenTacGia_160
        @soTrang_160 = soTrang_160
    end
    def display 
        super
        puts "Tên tác giả #@tenTacGia_160"
        puts "Số trang #@soTrang_160"
    end
end
class TapChi < TaiLieu
    attr_accessor :soPhatHanh_160, :thangPhatHanh_160
    def initialize maTaiLieu_160, tenNXB_160, soBanPhatHanh_160, soPhatHanh_160, thangPhatHanh_160
        super maTaiLieu_160, tenNXB_160, soBanPhatHanh_160
        @soPhatHanh_160 = soPhatHanh_160
        @thangPhatHanh_160 = thangPhatHanh_160
    end
    def display 
        super
        puts "Số phát hành #@soPhatHanh_160"
        puts "Tháng phát hành #@thangPhatHanh_160"
    end
end
class Bao < TaiLieu
    attr_accessor :ngayPhatHanh_160
    def initialize maTaiLieu_160, tenNXB_160, soBanPhatHanh_160, ngayPhatHanh_160
        super maTaiLieu_160, tenNXB_160, soBanPhatHanh_160
        @ngayPhatHanh_160 = ngayPhatHanh_160
    end
    def display 
        super
        puts "Ngày phát hành #@ngayPhatHanh_160"
    end
end
class QuanLySach
    @@qlsach=Array.new
    def addBook(qlsach)
        @@qlsach.push(qlsach)
    end
    def deleteById (id)
        deleteList = @@qlsach.delete_if {|x| x.maTaiLieu_160.chomp.eql?id}
        puts "Xoá thành công"
        puts "<---------******---------->"
    end
    def showListInforBook()
        @@qlsach.each {|qlsach| qlsach.display}
        puts ("<---------******---------->")
    end
    def timKiemNhaXuatBan(key)
        searchList = @@qlsach .select {|o| o.tenNXB_160 == key}
        searchList.each{|sl| sl.display}
        puts "<---------******---------->"
    end
end
class Main
    dem = 0
    quanLy = QuanLySach.new()
    until dem == 1 do
        puts "7. xoa"
        puts "6. in danh sach"
        puts "3. tim kiem theo nhà xuất bản"
        puts "2. them"
        puts "1. thoat"
        dem=gets
        if dem.to_i ==1
            exit
        end
        if dem.to_i == 2
            sach = Sach.new(1, "NXB ABC", 100, "567", 200)
            tapChi = TapChi.new(2, "NXB Phương Đông", 200, "AH123", "4/2022")
            bao = Bao.new(3, "NXB An Nam", 150, "3/2021")
            quanLy.addBook(sach)
            quanLy.addBook(tapChi)
            quanLy.addBook(bao)
            puts "Thêm thành công"
            puts "<---------******---------->"
        end
        if dem.to_i == 3
            puts "NXB cần tìm là"
            NXBCT_160 = gets.chomp.to_s
            quanLy.timKiemNhaXuatBan(NXBCT_160)
        end
            if dem.to_i == 6
            puts "====DS Sách===="
            quanLy.showListInforBook()
        end
        if dem.to_i == 7
            puts ("ID can xoa la")
            iDCanXoa_160 = gets.chomp.to_s
            quanLy.deleteById(iDCanXoa_160)
        end
    end
end