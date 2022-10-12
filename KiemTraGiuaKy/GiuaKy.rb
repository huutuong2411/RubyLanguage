class PhuongTien
    attr_accessor :iD_160,:hangSX_160,:namSX_160,:dongXe_160,:gia_160,:bienSo_160,:mau_160
    def initialize iD_160,hangSX_160,namSX_160,dongXe_160,gia_160,bienSo_160,mau_160
        @iD_160 = iD_160
        @hangSX_160 = hangSX_160
        @namSX_160 = namSX_160
        @dongXe_160 = dongXe_160
        @gia_160 = gia_160
        @bienSo_160 = bienSo_160
        @mau_160 = mau_160
    end
    def display
        puts "ID xe: #{@iD_160}"
        puts "Hang xe : #{@hangSX_160}"
        puts "Nam san xuat: #{@namSX_160}"
        puts "Dong xe : #{@dongXe_160}"
        puts "Gia ban : #{@gia_160}"
        puts "Bien so: #{@bienSo_160}"
        puts "Mau: #{@mau_160}"
    end
end
class Oto < PhuongTien
    attr_accessor :soCho_160, :kieuDongCo_160, :nhienLieu_160, :soTuiKhi_160, :ngayDangKiem_160
    def initialize iD_160,hangSX_160,namSX_160,dongXe_160,gia_160,bienSo_160,mau_160, soCho_160, kieuDongCo_160, nhienLieu_160, soTuiKhi_160, ngayDangKiem_160
        super iD_160,hangSX_160,namSX_160,dongXe_160,gia_160,bienSo_160,mau_160
        @soCho_160 = soCho_160
        @kieuDongCo_160 = kieuDongCo_160
        @nhienLieu_160 = nhienLieu_160
        @soTuiKhi_160 = soTuiKhi_160
        @ngayDangKiem_160 = ngayDangKiem_160
    end
    def display
        super
        puts "So cho: #{@soCho_160}"
        puts "Kieu dong co : #{@kieuDongCo_160}"
        puts "Nhien lieu: #{@nhienLieu_160}"
        puts "So tui khi: #{@soTuiKhi_160}"
        puts "Ngay dang kiem: #{@ngayDangKiem_160}"
    end
end
class XeMay < PhuongTien
    attr_accessor :congSuat_160, :dungTichBinhXang_160
    def initialize iD_160,hangSX_160,namSX_160,dongXe_160,gia_160,bienSo_160,mau_160, congSuat_160, dungTichBinhXang_160
        super iD_160,hangSX_160,namSX_160,dongXe_160,gia_160,bienSo_160,mau_160
        @congSuat_160 = congSuat_160
        @dungTichBinhXang_160 = dungTichBinhXang_160
    end
    def display
        super
        puts "Cong suat: #{@congSuat_160}"
        puts "Dung tich binh xang: #{@dungTichBinhXang_160}"
    end
end
class XeTai < PhuongTien
    attr_accessor :trongTai_160
    def initialize iD_160,hangSX_160,namSX_160,dongXe_160,gia_160,bienSo_160,mau_160, trongTai_160
        super iD_160,hangSX_160,namSX_160,dongXe_160,gia_160,bienSo_160,mau_160
        @trongTai_160 = trongTai_160
    end
    def display
        super
        puts "Trong tai: #{@trongTai_160}"
    end
end
class QLPTGT
    @@phuongTien = Array.new
    def themPhuongTien(phuongTien)
        @@phuongTien.push(phuongTien)
    end

    def timKiemTheoHang hang_160
        searchList = @@phuongTien.select {|o| o.hangSX_160.include? hang_160}
        searchList.each{ |sl| sl.display}
    end

    def timKiemTheoMau mau_160
        searchList = @@phuongTien.select {|o| o.mau_160.include? mau_160}
        searchList.each{ |sl| sl.display}
    end

    def timKiemTheoBien bienso_160
        searchList = @@phuongTien.select {|o| o.bienSo_160.include? bienso_160}
        searchList.each{ |sl| sl.display}
    end

    def inDanhSach()
        @@phuongTien.each{ |phuongTien| phuongTien.display}
    end
    def xoaTheoID id
        @@phuongTien = @@phuongTien.delete_if { |o| o.iD_160.chomp.eql?id }
        print "Đã xoá thành công!"
    end
end
class Main
    nhap = 0
    list = QLPTGT.new()
    until nhap == 1 do
        puts "1. Thoat"
        puts "2. Them phuong tien"
        puts "3. Tim kiem theo mau"
        puts "4. Tim kiem theo bien"
        puts "5. Tim kiem theo hang"
        puts "6. In danh sach"

        nhap = gets
        if nhap.to_i == 1
            exit
        end
        if nhap.to_i == 2
            c1 = PhuongTien.new(1,"A",2020, "Xe may", 15000000, "74D113577", "Den")
            c2 = PhuongTien.new(2, "B",2020, "O to", 20000000, "74D113578", "Do")
            c3 = PhuongTien.new(3, "C",2020, "Xe tai", 50000000, "74D113579", "Cam")
            c4 = PhuongTien.new(4, "D",2020, "Xe tai", 90000000, "74D113580", "Nau")
            c5 = PhuongTien.new(5, "E",2020, "Xe may", 5000000, "74D113581", "Den")
            list.themPhuongTien(c1)
            list.themPhuongTien(c2)
            list.themPhuongTien(c3)
            list.themPhuongTien(c4)
            list.themPhuongTien(c5)
            puts "Them thanh cong"
        end
        if nhap.to_i == 3
            puts ("Mau can tim la")
            mau_160 = gets.chomp.to_s
            list.timKiemTheoMau(mau_160)
        end
        if nhap.to_i == 4
            puts ("Bien can tim la")
            bien_160 = gets.chomp.to_s
            list.timKiemTheoBien(bien_160)
        end
        if nhap.to_i == 5
            puts ("Hang can tim la")
            hang_160 = gets.chomp.to_s
            list.timKiemTheoHang(hang_160)
        end
        if nhap.to_i == 6
            puts ("====Danh Sach xe")
            list.inDanhSach()
        end
        if nhap.to_i == 7
            puts ("ID can xoa la")
            iDXoa_160 = gets.chomp.to_s
            list.xoaTheoID(iDXoa_160)
        end
    end
end