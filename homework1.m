clear all

user(1).usrname = '';
user(1).pasword = '';
user(1).name = '';
user(1).sex = '';

running = true;
while running
    command = input('log or register?(l/g)','s');
    if command == 'l'
        while true
            usrname = input('username:','s');
            %check username
            if length(usrname) < 8 
                disp('username is too short');
                continue;
            end
           
            usrnamecheck = regexp(usrname,'^[a-zA-Z][a-zA-Z0-9]+');
            if isempty(usrnamecheck)
                disp('invalid username');
                continue;
            end
%             initial = usrname(1);
%             if ~isletter(initial)
%                 disp('initial should be a letter');
%                 continue;
%             end
            
        break;
        end
        
        
        while true
            pasword = input('password:','s');
            %check password
            if length(pasword) < 8
                disp('password is too short');
                continue;
            end
            
            paswordcheck = regexp(pasword,'^[a-zA-Z][a-zA-Z0-9]+');
            if isempty(paswordcheck)
                disp('invalid password');
                continue;
            end
            
            initial = pasword(1);
            if ~isletter(initial)
                disp('initial should be a letter');
                continue;
            end
            startIndex1 = regexp(usrname,pasword);
            startIndex2 = regexp(pasword,usrname);
            if ~isempty(startIndex1) || ~isempty(startIndex2)
                disp('username and password cannot be involved by each other');
                continue;
            end
            break;
        end
        
        while true
             chinesename = input('chinese name:','s');
             chinesecheck = regexp(chinesename,'^[\u4e00-\u9fa5]+$');
             if isempty(chinesecheck)
                 disp('chinese name cannot be anything except chinese words');
                 continue;
             end
            break; 
        end
       
        while true
            sex = input('sex:','s');
            if strcmp(sex,'male') ~= 0 && strcmp(sex,'female') ~= 0
                disp('invalid sex');
                continue;
            end
            break;
        end
    else if command == 'r'
            
        end
    end
end
    
        

