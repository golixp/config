
-- 日期和时间lua函数


local function translator(input, seg)
    if (input == "odt") then
        yield(Candidate("datetime", seg.start, seg._end, os.date("%Y-%m-%d %H:%M"), ""))
    end
    if (input == "od") then
       yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), ""))
    end
    if (input == "ot") then
       yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), ""))
    end
end

return translator